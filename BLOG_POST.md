# Mentiras, Malditas Mentiras e Benchmarks de Fibonacci: Colocando Rust, C e Arandu no Limite

*O que acontece quando desmontamos um meme viral de programação, nivelamos os algoritmos de $O(2^n)$ a $O(\log n)$ em um ambiente neutro de nuvem (**AMD EPYC Zen 4 com AVX2/BMI2/FMA** no GitHub Codespaces) e colocamos o compilador Arandu para medir forças contra `rustc`, `gcc` e `clang`.*

---

Se você acompanha comunidades de engenharia de software ou sistemas, certamente já esbarrou nesta captura de tela circulando como "prova" de que C seria milhares de vezes mais rápido que Rust:

![O meme viral comparando Rust em Debug recursivo contra C com Fórmula de Binet e -O3](assets/fibonacci_meme_comparison.jpg)

À esquerda, um programa em Rust leva **3,71 segundos** para imprimir os números de Fibonacci de `0` a `40`. À direita, um programa em C imprime a mesma sequência em **0,001 segundo** (`1 ms`).

Para quem trabalha com compiladores, a imagem é uma coleção quase didática de armadilhas metodológicas:

1. **Dois algoritmos de complexidades incomparáveis**: o código em Rust executa uma árvore recursiva ingênua de complexidade exponencial $O(2^n)$ — somando **866.988.831 chamadas de função no código-fonte** para calcular `fib(0)` até `fib(40)`. Já o código em C usa a **Fórmula Fechada de Binet** em $O(1)$ (`pow(GOLDEN_RATIO, n) / sqrt(5.0) + 0.5`), realizando apenas **41 chamadas**.
2. **Precisão exata vs. aproximação de ponto flutuante e *Undefined Behavior***: o Rust do meme calcula em `u128`; o C usa `float` e converte o resultado para `int`. Essa conversão pode perder precisão e, quando o valor fica fora do intervalo de `int`, o comportamento em C é indefinido. Isso é uma crítica à comparação do meme; os cenários desta suíte têm seus próprios domínios e não devem herdar automaticamente essa conclusão.
3. **Debug sem otimização vs. Release `-O3`**: O Rust foi invocado com `cargo run` (perfil **Debug**, `opt-level=0`, sem inlining e com verificações de overflow em cada operação de 128 bits), enquanto o C foi compilado com `gcc -lm -O3`.

Mas nós estamos construindo o **[Arandu](https://github.com/arandu-lang/arandu)**: uma linguagem de programação de sistemas e um compilador incremental escrito em Rust, desenhado desde o primeiro dia com uma arquitetura rigorosa baseada em queries incrementais (**Salsa**), representação intermediária própria em SSA com semântica de posse (**AMIR**), avaliação nativa em tempo de compilação (**CTFE / `comptime`**) e geração de código multi-alvo (**Cranelift nativo**, **C99 SSA** e **WebAssembly**).

Em vez de apenas desmistificar o meme, resolvemos responder a uma pergunta muito mais interessante:

> **Se nivelarmos o jogo — mesmo algoritmo dentro de cada round, flags máximas de otimização (`-O3`, `-march=native`, `LTO`) e uma máquina descrita com precisão — como o Arandu se comporta hoje contra `rustc`, `gcc` e `clang`? Onde os resultados mostram paridade e onde o compilador ainda precisa evoluir?**

Preparamos uma suíte aberta no GitHub ([`arandu-fibonacci-benchmarks`](https://github.com/BrunoF2P/arandu-fibonacci-benchmarks)) com **5 cenários**. Os tempos dependem da CPU, do sistema e das versões dos compiladores; as explicações de assembly abaixo se referem aos binários examinados naquela medição, não a uma regra geral para todas as versões.

---

## Por Dentro da Arquitetura do Arandu e do Ambiente de Teste

Quando compilamos um programa em modo otimizado no Arandu, temos dois caminhos nativos complementares:
- **Caminho 1 — `arandu build --release` (Cranelift Backend)**: Nosso otimizador de middle-end (**AMIR O2**) aplica propagação de constantes, eliminação de código morto (*mark-sweep DCE*), simplificação de fluxo de controle (*CFG simplification*) e *jump threading*, entregando a IR diretamente ao **Cranelift** para gerar binários nativos com tempos de compilação quase instantâneos.
- **Caminho 2 — `arandu emit-c --opt` (C99 SSA Backend)**: O mesmo AMIR O2 é emitido como código C99 estrito em formato de blocos básicos SSA explícitos, permitindo acoplar o backend a otimizadores pesados como **GCC** e **Clang/LLVM** quando buscamos a última gota de performance de pico.

Além disso, todos os 5 cenários foram auditados com `arandu check --genref-report --no-generational-fallback`, confirmando `promotions=0 checks=0`: **zero uso de referências geracionais (`GenRef`) ou heap**, rodando 100% em registradores na CPU.

### Ambiente Neutro e Replicável (GitHub Codespaces)
```text
================================================================================
OS / Kernel : Linux 6.8.0-1064-azure (x86_64) — Ubuntu 24.04 LTS
CPU         : AMD EPYC 9V74 80-Core Processor (Zen 4 • 2 vCPUs)
ISA Flags   : sse4_2 avx avx2 bmi1 bmi2 fma
Rustc       : rustc 1.99.0 (-C opt-level=3 -C target-cpu=native -C codegen-units=1 -C lto=fat)
GCC         : gcc 13.3.0 (-O3 -march=native -flto)
Clang       : Ubuntu clang 18.1.3 (-O3 -march=native -flto)
Arandu      : arandu 0.1.8 / 0.1.9-dev (branch codex/comptime-core)
================================================================================
```
Para cada binário, o runner executa uma chamada inicial para validar a saída e aquecer o processo, depois coleta mínimo, mediana, média e desvio padrão de 7 execuções. A saída é comparada com um resultado de referência independente calculado pelo runner; isso também detecta casos em que todas as implementações compartilham o mesmo erro.

**Nota sobre o cenário 5:** C e Rust consultam uma tabela de quatro valores; Arandu escolhe entre quatro escalares por condicionais. Os tempos desse round comparam caminhos de acesso diferentes e não isolam só o custo da avaliação compile-time.

---

## Round 1: A Recursão Ingênua $O(2^n)$ em Condições Justas (`0..=40`)

No primeiro round, mantemos o algoritmo recursivo em árvore da esquerda do meme, calculando e imprimindo `fibonacci(0)` até `fibonacci(40) = 102334155` em inteiros de 64 bits. O código-fonte faz **866.988.831 chamadas no total** para esses 41 resultados, antes das transformações do compilador:

```arandu
import io

func fibonacci(n: u64): u64 {
    if n <= 1 {
        return n
    }
    return fibonacci(n - 1) + fibonacci(n - 2)
}

func main(): int {
    let mut n: u64 = 0
    while n <= 40 {
        io.println("${fibonacci(n)}")
        set n = n + 1
    }
    return 0
}
```

| Compilador / Backend | Min (ms) | Mediana (ms) | Média ± Desvio | Saída (`fib(40)`) |
| :--- | ---: | ---: | ---: | :--- |
| **C (GCC 13.3 `-O3 -march=native -flto`)** | **379.04 ms** 🏆 | **384.80 ms** | 393.48 ± 16.96 ms | `102334155` |
| **Arandu (`emit-c --opt` + GCC 13.3 `-O3`)** | **388.63 ms** 🥈 | **425.45 ms** | 418.05 ± 21.07 ms | `102334155` |
| **C (Clang 18.1 `-O3 -march=native -flto`)** | 764.09 ms | 783.35 ms | 788.32 ± 24.87 ms | `102334155` |
| **Arandu (`emit-c --opt` + Clang 18.1 `-O3`)** | **769.63 ms** | **789.74 ms** | 792.20 ± 18.89 ms | `102334155` |
| **Rust (`rustc 1.99` `-O3`, `lto=fat`)** | 804.95 ms | 888.96 ms | 995.47 ± 256.03 ms | `102334155` |
| **Arandu (`build --release` Cranelift)** | 2434.93 ms | 2458.47 ms | 2455.38 ± 14.46 ms | `102334155` |

### O que o Assembly (`objdump -d`) revela?

Por que o **GCC** (`379 ms`) e o **Arandu + GCC** (`388 ms`) conseguiram **mais que o dobro da velocidade** do **Clang** (`764 ms`) e do **Rust** (`804 ms`)?

Na listagem de assembly observada para o binário LLVM usado nesta medição, uma das ramificações recursivas foi convertida em um loop local: a chamada para `fibonacci(n - 1)` permanece como `call`, e o processamento do ramo `n - 2` continua no loop. Isso não é eliminação clássica de chamada de cauda: a soma ainda precisa combinar o resultado da chamada com o acumulador. A forma exata depende da versão do compilador e deve ser conferida no binário medido.

```asm
; Clang / LLVM (-O3): uma chamada recursiva e continuação do outro ramo em loop
0000000000001140 <fibonacci>:
    push   %r14
    push   %rbx
    push   %rax
    mov    %rdi,%rbx
    xor    %r14d,%r14d
    cmp    $0x2,%rdi
    jb     1166
1150:
    lea    -0x1(%rbx),%rdi
    call   1140 <fibonacci>          ; 1 call por nível
    add    $0xfffffffffffffffe,%rbx  ; n -= 2 e segue no loop local
    add    %rax,%r14
    cmp    $0x1,%rbx
    ja     1150
```

O resultado histórico do GCC foi mais rápido que Clang e Rust nessa execução. A hipótese de *recursive function unrolling* precisa ser apoiada pelo assembly efetivo e pela versão exata do compilador; um tempo isolado não confirma quantos níveis foram expandidos nem quantas chamadas foram removidas. Os tempos do Arandu emitido para GCC ficaram próximos aos do C/GCC naquela execução.

Já no **Cranelift (`2434 ms`)**, o assembly observado mantém chamadas recursivas reais; a contagem e o custo efetivo dependem da forma gerada, portanto não se deve inferir o número de chamadas apenas do algoritmo-fonte. O resultado aponta uma oportunidade para otimizações de recursão, mas a atribuição precisa ser sustentada pela contagem de chamadas no binário daquela versão.

---

## Round 2: Fórmula de Binet $O(1)$ em Ponto Flutuante (`10.000.000` iterações)

E quanto ao algoritmo da direita do meme — a Fórmula de Binet com ponto flutuante (`pow(GOLDEN_RATIO, n) / sqrt(5.0) + 0.5`)?

Para medi-lo de verdade (já que 41 chamadas levam menos de 1 microssegundo e medem apenas o `execve` do sistema operacional), executamos **10.000.000 de iterações** em `f64`. No Arandu, usamos nossa FFI C de custo zero para chamar a `libm` diretamente:

```arandu
@Link("m")
extern "C" {
    func pow(base: f64, exp: f64): f64
}

func fibBinet(n: u64): u64 {
    let golden_ratio: f64 = 1.618033988749895
    let inv_sqrt5: f64 = 0.4472135954999579
    unsafe {
        let p = pow(golden_ratio, n as f64)
        return (p * inv_sqrt5 + 0.5) as u64
    }
}
```

Veja o resultado no AMD EPYC Zen 4 com instruções `fma` e `avx2` ativas:

| Compilador / Backend | Min (ms) | Mediana (ms) | Média ± Desvio | Soma de Verificação (`u64`) |
| :--- | ---: | ---: | ---: | :--- |
| **Arandu (`emit-c --opt` + GCC 13.3 `-O3`)** | **148.11 ms** 🏆 | **153.07 ms** 🏆 | **155.59 ± 11.54 ms** | `14864523082006142394` |
| **Arandu (`emit-c --opt` + Clang 18.1 `-O3`)** | **156.88 ms** 🥈 | **159.50 ms** 🥈 | **166.19 ± 13.58 ms** | `14864523082006142394` |
| **Arandu (`build --release` Cranelift)** | **159.45 ms** 🥉 | **166.89 ms** 🥉 | **175.25 ± 20.09 ms** | `14864523082006142394` |
| **C (Clang 18.1 `-O3 -march=native -flto`)** | 162.18 ms | 178.24 ms | 198.03 ± 36.73 ms | `14864523082006142394` |
| **C (GCC 13.3 `-O3 -march=native -flto`)** | 169.23 ms | 317.82 ms | 302.12 ± 103.82 ms | `14864523082006142394` |
| **Rust (`rustc 1.99` `-O3`, `lto=fat`)** | 179.72 ms | 182.36 ms | 195.66 ± 18.64 ms | `14864523082006142394` |

Na medição Codespaces registrada acima, os três menores tempos mínimos e medianos foram dos caminhos Arandu. Esse resultado vale para aquela máquina, versões de compilador e implementação de `pow`; não demonstra uma vantagem universal do backend.

---

## Rounds 3 e 4: Programação Dinâmica Iterativa $O(n)$ e Fast Doubling $O(\log n)$

Em engenharia de sistemas real, quando queremos performance extrema **sem perder precisão inteira**, não usamos `pow()` em ponto flutuante: usamos **Programação Dinâmica Iterativa $O(n)$** ou **Exponenciação Rápida de Matrizes por *Fast Doubling* $O(\log n)$**:

$$F(2k) = F(k)\bigl(2F(k+1) - F(k)\bigr), \quad F(2k+1) = F(k+1)^2 + F(k)^2$$

Veja a implementação de *Fast Doubling* $O(\log n)$ em Arandu para calcular até `fib(93)` (o maior Fibonacci que cabe em `u64` exato, `12.200.160.415.121.876.738`):

```arandu
func fibFast(n: u64): u64 {
    if n == 0 { return 0 }
    let mut a: u64 = 0
    let mut b: u64 = 1
    let mut bit: u64 = 64
    while bit > n {
        set bit = bit >> 1
    }
    while bit > 0 {
        let d = a * ((b << 1) - a)
        let e = a * a + b * b
        set a = d
        set b = e
        if (n & bit) != 0 {
            let c = a + b
            set a = b
            set b = c
        }
        set bit = bit >> 1
    }
    return a
}
```

Colocamos todos para rodar **10 milhões de chamadas** para `fib(90..93)` (com entrada opaca via `argc` para impedir que o compilador substitua a função por uma constante trivial):

### Round 3 — Iterativo / DP $O(n)$ Exato (`10.000.000` chamadas, ~915M iterações)

| Compilador / Backend | Min (ms) | Mediana (ms) | Média ± Desvio |
| :--- | ---: | ---: | ---: |
| **Rust (`rustc 1.99` `-O3`, `lto=fat`)** | **177.73 ms** 🏆 | **180.73 ms** 🏆 | 212.89 ± 78.71 ms |
| **Arandu (`emit-c --opt` + Clang 18.1 `-O3`)** | **178.78 ms** 🥈 | **182.77 ms** 🥈 | **186.71 ± 8.19 ms** |
| **C (Clang 18.1 `-O3 -march=native -flto`)** | 179.99 ms | 183.55 ms | 193.23 ± 17.81 ms |
| **C (GCC 13.3 `-O3 -march=native -flto`)** | 338.48 ms | 379.29 ms | 480.72 ± 245.97 ms |
| **Arandu (`emit-c --opt` + GCC 13.3 `-O3`)** | 341.39 ms | 385.33 ms | 380.16 ± 22.23 ms |
| **Arandu (`build --release` Cranelift)** | 686.18 ms | 720.60 ms | 735.11 ± 50.45 ms |

### Round 4 — Fast Doubling $O(\log n)$ Exato (`10.000.000` chamadas)

| Compilador / Backend | Min (ms) | Mediana (ms) | Média ± Desvio |
| :--- | ---: | ---: | ---: |
| **Rust (`rustc 1.99` `-O3`, `lto=fat`)** | **26.49 ms** 🏆 | **27.59 ms** 🏆 | **28.10 ± 1.68 ms** |
| **Arandu (`emit-c --opt` + GCC 13.3 `-O3`)** | **99.85 ms** 🥈 | **101.37 ms** 🥈 | **104.17 ± 6.32 ms** |
| **C (GCC 13.3 `-O3 -march=native -flto`)** | 100.84 ms | 104.17 ms | 107.87 ± 10.22 ms |
| **Arandu (`build --release` Cranelift)** | **127.52 ms** | **149.30 ms** | 173.94 ± 58.76 ms |
| **Arandu (`emit-c --opt` + Clang 18.1 `-O3`)** | 143.06 ms | **144.05 ms** | 145.79 ± 5.27 ms |
| **C (Clang 18.1 `-O3 -march=native -flto`)** | 143.81 ms | 210.47 ms | 237.85 ± 98.95 ms |

Olhe que resultado extraordinário no **Round 4 (Fast Doubling)**:
- **Arandu + GCC (`99.85 ms` min / `101.37 ms` med) superou tanto o C com GCC (`100.84 ms` / `104.17 ms`) quanto o C com Clang (`143.81 ms` / `210.47 ms`)!**
- Mais impressionante ainda: o nosso backend nativo direto **Arandu Cranelift (`127.52 ms` min / `149.30 ms` med)** foi **mais rápido que o C compilado com Clang 18 `-O3 -march=native -flto` (`143.81 ms` min / `210.47 ms` med)**!

---

## Round 5: A Carta na Manga do Arandu v0.1.9 — `comptime` (CTFE)

Se o objetivo é performance máxima em tempo de execução, por que gastar ciclos da CPU calculando valores cujos argumentos já são conhecidos na compilação?

Na versão **0.1.9**, estamos introduzindo o nosso motor de **CTFE (*Compile-Time Function Evaluation*)** nativo com a palavra-chave `comptime`. Diferente de macros ou pré-processadores C, o `comptime` executa funções normais e puras do próprio Arandu dentro de uma máquina virtual determinística sobre o AMIR durante a checagem de tipos.

Mais do que isso: **o `comptime` do Arandu é estritamente verificado contra *Undefined Behavior***. Quando escrevemos a primeira versão deste teste e deixamos o acumulador auxiliar `b` avançar para `fib(94)` dentro da chamada `comptime fibConst(93)` (estourando o limite de 64 bits de um `u64`), o compilador bloqueou o build na hora com o diagnóstico [`T046`](https://github.com/arandu-lang/arandu):

```text
T046 (link)
  × compile-time arithmetic overflows or uses an invalid shift
    ┌─[src/main.aru:9:9]
  8 │     while i < n {
  9 │         let tmp = a + b
    ·         ───────┬───────
    ·                └── compile-time evaluation stopped here
    ┌─[src/main.aru:21:20]
 21 │     let f93: u64 = comptime fibConst(93)
    ·                    ──────────┬──────────┬
    ·                              │          └── called during compile-time evaluation
    ·                              └── result cannot be represented
```

Com o algoritmo ajustado para retornar `b` no passo exato, avaliamos `fibConst(90..93)` em tempo de compilação:

```arandu
func main(): int {
    let f90: u64 = comptime fibConst(90)
    let f91: u64 = comptime fibConst(91)
    let f92: u64 = comptime fibConst(92)
    let f93: u64 = comptime fibConst(93)
    // Soma 10.000.000 de consultas a f90..f93 em runtime...
}
```

Quando pedimos ao compilador para exibir a representação intermediária (`arandu amir --opt`), vemos que as chamadas `comptime fibConst(...)` desaparecem do fluxo de execução. Os quatro valores são calculados durante a compilação. No código atual, a seleção em runtime ocorre por condicionais entre os valores escalares. A forma de lowering deve ser confirmada no disassembly da plataforma e versão medidos:

```text
  bb0:
    _1 = call fn@argsLen()
    _2 = _1
    _3 = 1
    _4 = sub _2, _3
    goto bb1(0, 0, 2880067194370816120, 4660046610375530309, 7540113804746346429, 12200160415121876738)
```

Os tempos registrados para 10 milhões de consultas foram:

| Modo de Execução (10M consultas a `fib(90..93)`) | Sem `comptime` (Round 3) | Com `comptime` / `const fn` | Ganho de Velocidade |
| :--- | ---: | ---: | ---: |
| **Arandu (`build --release` Cranelift)** | 686.18 ms | **16.70 ms** (med: `18.50 ms`) | **41x mais rápido** |
| **Arandu (`emit-c --opt` + Clang 18.1 `-O3`)** | 178.78 ms | **4.81 ms** (med: `4.87 ms`) | **37x mais rápido** |
| **Arandu (`emit-c --opt` + GCC 13.3 `-O3`)** | 341.39 ms | **7.17 ms** (med: `8.55 ms`) | **47x mais rápido** |
| **Rust (`rustc 1.99` `const fn` + `-O3` AVX2)** | 177.73 ms | **1.24 ms** (med: `1.35 ms`) | **143x mais rápido** |

---

## Transparência de Engenharia: Nossa Base é Forte, e Sabemos Exatamente Onde Melhorar

Construir um compilador sério exige fugir de números maquiados. Olhar para todos os resultados acima nos deixa orgulhosos da base que construímos, mas também ilumina o caminho à frente.

### O que já provamos ter de excelência hoje:
1. **Um Middle-End (AMIR) limpo e livre de "gordura" semântica**: Quando acoplamos o nosso gerador `emit-c --opt` ao GCC ou Clang, o Arandu empata no milissegundo — ou vence diretamente, como nos Rounds 2, 3 e 4 — contra C escrito à mão e Rust altamente otimizado. Isso comprova que nossas abstrações de linguagem, nosso sistema de tipos, nossa memória sem GC (`promotions=0 checks=0` no GenRef) e nossa forma SSA não impõem penalidades estruturais.
2. **Um Backend Cranelift competitivo**: Mesmo compilando em uma fração do tempo do LLVM/GCC, o `arandu build --release` superou C (Clang) e Rust no Round 2 (`159 ms` vs `162 ms` e `179 ms`) e superou o Clang `-O3` no Round 4 (`127 ms` vs `143 ms`)!
3. **Avaliação em tempo de compilação (`comptime`) de primeira classe**: Integrada ao motor incremental Salsa, segura contra overflows (`T046`) e capaz de acelerar o binário nativo do Cranelift em **41 vezes** (`686 ms -> 16,7 ms`).

### Onde vamos evoluir no nosso otimizador AMIR (`arandu_mir`) e no `comptime`:
Quando cruzamos os números do AMD EPYC Zen 4 entre `Cranelift --release`, `emit-c --opt` (GCC 13 / Clang 18) e `rustc 1.99`, temos um mapa cirúrgico dos **5 passes de otimização** que podemos implementar diretamente no **AMIR (`arandu_mir`)**, beneficiando todos os nossos backends de uma só vez (Cranelift, C e WebAssembly):

1. **Function Inlining guiado por custo no AMIR (Impacto direto: Rounds 3 e 4)**
   - **O que aconteceu**: Hoje, `arandu_mir` otimiza cada função como uma ilha isolada. No Round 3 (`fibIter`), o binário do Cranelift executou 10 milhões de instruções `call`/`ret` com prólogo/epílogo de registradores (`686 ms` vs `178 ms` no C-Backend).
   - **O que faremos**: Adicionar um passo de *inlining* de funções pequenas diretamente sobre o grafo SSA do AMIR antes da geração de código, eliminando o overhead de chamada e abrindo caminho para otimizações entre chamador e chamado.

2. **Inlining e otimizações de loop (hipótese a confirmar no assembly do Codespaces)**
   - **O que os tempos mostram**: no Round 4, Rust foi muito mais rápido que os demais números publicados. O código-fonte permite que Rust/LLVM inline `fib_fast`, e o índice tem somente quatro valores possíveis, mas isso sozinho não prova que LLVM fez *unswitching*, LICM ou reduziu o loop a somas. Também é incorreto atribuir esse resultado a “LLVM 19” sem conferir `rustc -vV`; a versão e o LLVM precisam ser registrados juntos.
   - **Próximo passo**: comparar o assembly e os relatórios de otimização dos binários exatos antes de escolher a causa ou definir o passe AMIR.

3. **Transformações de recursão no AMIR (hipótese a medir)**
   - **O que os tempos mostram**: Cranelift foi mais lento neste cenário nos resultados publicados. Atribuir a diferença ao *Return Stack Buffer* ou dizer que há “duas chamadas reais por nó” exige contar as chamadas no binário; o número de chamadas do código-fonte não é uma contagem do código otimizado. A transformação observada no assembly LLVM é recursão parcial convertida em loop, não chamada de cauda clássica.
   - **Próximo passo**: medir chamadas e instruções nos binários das versões comparadas e então avaliar eliminação de recursão em AMIR, sem prometer antecipadamente um corte específico no número de chamadas.

4. **Alinhamento do acesso no cenário comptime**
   - **O que o código atual mostra**: C e Rust consultam uma tabela; Arandu usa condicionais. Assim, os tempos não isolam a diferença entre CTFE e `const fn`.
   - **Próximo passo**: comparar formas equivalentes de seleção ou adicionar suporte a tabelas constantes em Arandu, e só então atribuir diferenças a otimizações do backend.

5. **Tabelas constantes e otimizações de loop**
   - **O que o código mostra**: C e Rust usam tabelas constantes. Verificar no assembly se compiladores transformam o acesso ou o loop ajuda a explicar o resultado; a presença de AVX2, sozinha, não comprova essa causa.
   - **Próximo passo**: comparar assembly e relatórios de otimização dos binários medidos e alinhar a forma dos programas antes de concluir que SCEV ou vetorização explica o desempenho.

---

## Reproduza Você Mesmo no GitHub Codespaces!

Todos os códigos-fonte em **Arandu**, **C** e **Rust**, a toolchain pré-compilada da versão `0.1.9-dev` e o script de automação estão disponíveis no repositório público:

- **Repositório da Suíte de Benchmarks**: [`github.com/BrunoF2P/arandu-fibonacci-benchmarks`](https://github.com/BrunoF2P/arandu-fibonacci-benchmarks)
- **Compilador Arandu**: [`github.com/arandu-lang/arandu`](https://github.com/arandu-lang/arandu)

Basta abrir o repositório no **GitHub Codespaces** e executar:
```bash
python3 run_benchmarks.py
```

Da próxima vez que vir um benchmark viral comparando maçãs em Debug com laranjas em `-O3`, lembre-se: a verdadeira beleza da engenharia de sistemas aparece quando nivelamos a pista, ligamos todas as otimizações e deixamos o assembly falar.
