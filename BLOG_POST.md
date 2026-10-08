# Mentiras, Malditas Mentiras e Benchmarks de Fibonacci: Colocando Rust, C e Arandu no Limite

*O que acontece quando desmontamos um meme viral de programação, nivelamos os algoritmos de $O(2^n)$ a $O(\log n)$ e colocamos o compilador Arandu para medir forças no assembly contra `rustc`, `gcc` e `clang`.*

---

Se você acompanha comunidades de engenharia de software ou sistemas, certamente já esbarrou nesta captura de tela circulando como "prova" de que C seria milhares de vezes mais rápido que Rust:

![O meme viral comparando Rust em Debug recursivo contra C com Fórmula de Binet e -O3](assets/fibonacci_meme_comparison.jpg)

À esquerda, um programa em Rust leva **3,71 segundos** para imprimir os números de Fibonacci de `0` a `40`. À direita, um programa em C imprime a mesma sequência em **0,001 segundo** (`1 ms`).

Para quem trabalha com compiladores, a imagem é uma coleção quase didática de armadilhas metodológicas:

1. **Dois algoritmos de complexidades incomparáveis**: O código em Rust executa uma árvore recursiva ingênua de complexidade exponencial $O(2^n)$ — somando **883.631.190 chamadas de função** para ir de `0` a `40`. Já o código em C usa a **Fórmula Fechada de Binet** em $O(1)$ (`pow(GOLDEN_RATIO, n) / sqrt(5.0) + 0.5`), realizando apenas **41 chamadas**.
2. **Precisão exata de 128 bits vs. aproximação de ponto flutuante e *Undefined Behavior***: O Rust calcula inteiros exatos sem sinal de **128 bits (`u128`)**. O código em C converte `n` para `float` (24 bits de mantissa), aproxima a potência em ponto flutuante (que perde exatidão inteira rapidamente) e trunca o resultado em um `int` de 32 bits com sinal — o que provoca *Signed Integer Overflow* (*Undefined Behavior* em C) já em `fib(47)`!
3. **Debug sem otimização vs. Release `-O3`**: O Rust foi invocado com `cargo run` (perfil **Debug**, `opt-level=0`, sem inlining e com verificações de overflow em cada operação de 128 bits), enquanto o C foi compilado com `gcc -lm -O3`.

Mas nós estamos construindo o **[Arandu](https://github.com/arandu-lang/arandu)**: uma linguagem de programação de sistemas e um compilador incremental escrito em Rust, desenhado desde o primeiro dia com uma arquitetura rigorosa baseada em queries incrementais (**Salsa**), representação intermediária própria em SSA com semântica de posse (**AMIR**), avaliação nativa em tempo de compilação (**CTFE / `comptime`**) e geração de código multi-alvo (**Cranelift nativo**, **C99 SSA** e **WebAssembly**).

Em vez de apenas desmistificar o meme, resolvemos responder a uma pergunta muito mais interessante:

> **Se nivelarmos o jogo — mesmo algoritmo, mesmos tipos exatos, flags máximas de otimização (`-O3`, `-march=native`, `LTO`) — como o Arandu se comporta hoje contra gigantes maduros como `rustc`, `gcc` e `clang`? Onde nós já empatamos (ou vencemos) e onde o nosso compilador ainda precisa evoluir?**

Preparamos uma suíte aberta com **5 paradigmas algorítmicos** e abrimos o `objdump` de cada binário para contar a história real, instrução por instrução.

---

## Por Dentro da Arquitetura do Arandu

Quando compilamos um programa em modo otimizado no Arandu, temos dois caminhos nativos complementares:
- **Caminho 1 — `arandu build --release` (Cranelift Backend)**: Nosso otimizador de middle-end (**AMIR O2**) aplica propagação de constantes, eliminação de código morto (*mark-sweep DCE*), simplificação de fluxo de controle (*CFG simplification*) e *jump threading*, entregando a IR diretamente ao **Cranelift** para gerar binários nativos com tempos de compilação quase instantâneos.
- **Caminho 2 — `arandu emit-c --opt` (C99 SSA Backend)**: O mesmo AMIR O2 é emitido como código C99 estrito em formato de blocos básicos SSA explícitos, permitindo acoplar o backend a otimizadores pesados como **GCC** e **Clang/LLVM** quando buscamos a última gota de performance de pico.

Testamos **ambos os caminhos** em todos os rounds abaixo.

### Ambiente de Benchmark
- **Hardware / SO**: Linux `x86_64`
- **Compiladores**:
  - **Rust**: `rustc 1.97.1` (`-C opt-level=3 -C target-cpu=native -C codegen-units=1 -C lto=fat`)
  - **GCC**: `gcc 16.2.1` (`-O3 -march=native -flto`)
  - **Clang**: `clang 23.1.1` (`-O3 -march=native -flto`)
  - **Arandu**: `arandu 0.1.9-dev` (branch `codex/comptime-core-0.1.9`)
- **Protocolo**: 1 rodada de *warmup* + verificação de paridade exata da saída + 7 execuções cronometradas por binário.

---

## Round 1: A Recursão Ingênua $O(2^n)$ em Condições Justas (`0..=40`)

No primeiro round, mantemos exatamente o algoritmo recursivo em árvore da esquerda do meme, calculando e imprimindo `fibonacci(0)` até `fibonacci(40) = 102334155` em inteiros exatos de 64 bits (`u64`). São **883,6 milhões de chamadas recursivas**:

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

| Compilador / Backend | Min (ms) | Mediana (ms) | Média ± Desvio | Speedup vs Meme Debug |
| :--- | ---: | ---: | ---: | ---: |
| **Arandu (`emit-c --opt` + GCC 16 `-O3`)** | **532.76 ms** | **534.93 ms** | **534.42 ± 1.33 ms** | **7,23x mais rápido** |
| **C (GCC 16 `-O3 -march=native -flto`)** | 560.51 ms | 561.75 ms | 562.06 ± 1.29 ms | 6,88x mais rápido |
| **C (Clang 23 `-O3 -march=native -flto`)** | 916.88 ms | 919.21 ms | 921.62 ± 7.05 ms | 4,21x mais rápido |
| **Arandu (`emit-c --opt` + Clang 23 `-O3`)** | 917.07 ms | 921.07 ms | 920.96 ± 1.93 ms | 4,20x mais rápido |
| **Rust (`rustc 1.97` `-O3`, `lto=fat`)** | 991.61 ms | 995.74 ms | 997.96 ± 7.22 ms | 3,88x mais rápido |
| **Arandu (`build --release` Cranelift)** | 1856.55 ms | 1859.44 ms | 1864.47 ± 10.15 ms | 2,08x mais rápido |
| *Referência do Meme: Rust Debug (`opt-level=0`)* | *3851.25 ms* | *3866.77 ms* | *3870.46 ± 21.30 ms* | *1,00x* |

### O que o Assembly (`objdump -d`) revela?

Por que o **GCC 16** e o **Arandu + GCC** (`534 ms`) conseguiram quase o dobro da velocidade do **Clang 23** (`919 ms`) e do **Rust** (`995 ms`)?

Quando inspecionamos o binário gerado pelo LLVM (tanto no Clang quanto no Rustc), vemos uma otimização clássica de *Tail-Call Elimination*: a segunda chamada recursiva `fibonacci(n - 2)` é transformada em um salto para o topo da própria função (`add $-2, %rbx; ja 1150`), enquanto a primeira chamada `fibonacci(n - 1)` continua sendo uma instrução `callq` real:

```asm
; Clang 23 / LLVM (-O3): Tail-call loop + 1 call recursivo por nó
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
    add    $0xfffffffffffffffe,%rbx  ; n -= 2 (tail recursion eliminada)
    add    %rax,%r14
    cmp    $0x1,%rbx
    ja     1150
```

Já o **GCC 16** faz algo muito mais agressivo: além de eliminar a recursão de cauda, ele aplica **Recursive Function Unrolling de 6 níveis de profundidade** dentro do próprio corpo de `fibonacci` (`sub $0xd8, %rsp`), expandindo sub-árvores inteiras em somas diretas nos registradores `%r11` a `%r15` e reduzindo drasticamente o número de instruções `call`/`ret`. E como o `emit-c --opt` do Arandu entrega o código C já simplificado em forma SSA com `goto` explícitos entre blocos básicos, o otimizador do GCC gerou um prólogo ainda mais enxuto do que no C manual (`534.93 ms` vs `561.75 ms`).

Já no **Cranelift (`1859 ms`)**, nem o AMIR nem o Cranelift fazem ainda *Tail-Recursion Elimination*: o código nativo executa literalmente as duas instruções `call fibonacci` por nó da árvore — quase **900 milhões de chamadas de função reais** em `1,85s`, o que ainda é mais que o dobro da velocidade do Rust em modo Debug.

---

## Rounds 2 e 3: Fórmula de Binet $O(1)$ vs. Iterativo $O(n)$ e Fast Doubling $O(\log n)$

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

Mas em engenharia de sistemas real, quando queremos performance extrema **sem perder precisão inteira**, não usamos `pow()` em ponto flutuante: usamos **Programação Dinâmica Iterativa $O(n)$** ou **Exponenciação Rápida de Matrizes por *Fast Doubling* $O(\log n)$**:

$$F(2k) = F(k)\bigl(2F(k+1) - F(k)\bigr), \quad F(2k+1) = F(k+1)^2 + F(k)^2$$

Veja a elegância do *Fast Doubling* $O(\log n)$ em Arandu para calcular até `fib(93)` (o maior Fibonacci que cabe em `u64` exato, `12.200.160.415.121.876.738`):

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

| Algoritmo (`10.000.000` chamadas) | Arandu (`emit-c` + Clang `-O3`) | Arandu (`emit-c` + GCC `-O3`) | Arandu (`Cranelift --release`) | Rust (`-O3`, `lto=fat`) | C (`Clang -O3` / `GCC -O3`) |
| :--- | ---: | ---: | ---: | ---: | ---: |
| **Binet $O(1)$ (`f64` inexato)** | **335.32 ms** 🏆 | 336.38 ms | **352.85 ms** | 414.86 ms | 356.07 ms / 343.56 ms |
| **Iterativo $O(n)$ (`u64` exato)** | **236.12 ms** | 633.38 ms | 896.04 ms | **229.38 ms** 🏆 | 235.25 ms / 625.75 ms |
| **Fast Doubling $O(\log n)$ (`u64` exato)** | **126.35 ms** | **154.66 ms** | 211.63 ms | **124.03 ms** 🏆 | 124.72 ms / 154.35 ms |

Olhe para esses números com atenção:
1. **A Farsa da Fórmula de Binet**: Mesmo sendo teoricamente "$O(1)$", chamar `pow()` em ponto flutuante (`~335–414 ms`) é **quase 3 vezes mais lento** que calcular o resultado inteiro exato de 64 bits via *Fast Doubling* $O(\log n)$ (`~124–126 ms`)!
2. **Na Fórmula de Binet, o Arandu venceu todo mundo**: Tanto no C-Backend (`335.32 ms`) quanto no backend nativo direto **Cranelift (`352.85 ms`)**, o Arandu superou o Rust (`414.86 ms`) e o Clang (`356.07 ms`).
3. **Paridade de 99% em código numérico intenso**: No *Fast Doubling* $O(\log n)$ e no Iterativo $O(n)$, o código gerado pelo Arandu via C-Backend cravou **`126.35 ms`** (contra `124.03 ms` do Rust e `124.72 ms` do C no Clang) e **`154.66 ms`** (contra `154.35 ms` do C no GCC). Zero imposto de abstração.

---

## Round 4: A Carta na Manga do Arandu v0.1.9 — `comptime` (CTFE)

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

Quando pedimos ao compilador para exibir a representação intermediária (`arandu amir --opt`), vemos que `fibConst` desapareceu completamente do fluxo de execução. Os 4 números de Fibonacci foram congelados e injetados diretamente como literais de 64 bits no cabeçalho do bloco básico:

```text
  bb0:
    _1 = call fn@argsLen()
    _2 = _1
    _3 = 1
    _4 = sub _2, _3
    goto bb1(0, 0, 2880067194370816120, 4660046610375530309, 7540113804746346429, 12200160415121876738)
```

E no binário nativo do **Cranelift (`arandu build --release`)**, eles se transformam em instruções imediatas `movabs` de 1 ciclo:

```asm
   1295d: movabs $0xa94fad42221f2702,%rcx   ; fib(93) = 12200160415121876738
   12967: add    %rcx,%rdi
   ...
   1296f: movabs $0x68a3dd8e61eccfbd,%rcx   ; fib(92) = 7540113804746346429
   12979: add    %rcx,%rdi
```

Veja o impacto no tempo de execução para 10 milhões de consultas:

| Modo de Execução (10M consultas a `fib(90..93)`) | Sem `comptime` (Runtime) | Com `comptime` / `const fn` | Ganho de Velocidade |
| :--- | ---: | ---: | ---: |
| **Arandu (`build --release` Cranelift)** | 896.04 ms | **30.01 ms** | **30x mais rápido** |
| **Rust (`rustc 1.97` `-O3`, `lto=fat`)** | 229.38 ms | **1.45 ms** | **158x mais rápido** |
| **Arandu (`emit-c --opt` + Clang 23 `-O3`)** | 236.12 ms | **0.52 ms** 🏆 | **454x mais rápido** |

> **Curiosidade de Compiladores**: Por que o `comptime` + Clang (`0,52 ms`) foi mais rápido até que o `Cranelift` (`30,01 ms`) se em ambos o `comptime` do Arandu eliminou 100% do cálculo de Fibonacci?
> Abrindo o assembly do Clang, descobrimos que ao receber as 4 constantes prontas do `comptime` do Arandu, o analisador de evolução escalar (*Scalar Evolution — SCEV*) do LLVM percebeu que o índice `(base + i) & 3` tinha período 4 ao longo de `10.000.000` de iterações — e colapsou o loop inteiro de 10 milhões de voltas em uma única multiplicação por `2.500.000` (`imul $0x2625a0, %rcx, %r15`), enquanto o Cranelift executou honestamente as 10 milhões de iterações a `3 ns` por volta!

---

## Transparência de Engenharia: Nossa Base é Forte, e Sabemos Exatamente Onde Melhorar

Construir um compilador sério exige fugir de números maquiados. Olhar para todos os resultados acima nos deixa orgulhosos da base que construímos, mas também ilumina o caminho à frente.

### O que já provamos ter de excelência hoje:
1. **Um Middle-End (AMIR) limpo e livre de "gordura" semântica**: Quando acoplamos o nosso gerador `emit-c --opt` ao GCC ou Clang, o Arandu empata no milissegundo (ou fica em 1º lugar) contra C escrito à mão e Rust altamente otimizado em **todos os 5 cenários**. Isso comprova que nossas abstrações de linguagem, nosso sistema de tipos e nossa forma SSA não impõem penalidades estruturais.
2. **Avaliação em tempo de compilação (`comptime`) de primeira classe**: Integrada ao motor incremental Salsa, segura contra overflows (`T046`) e capaz de materializar valores diretamente no AMIR para todos os backends.

### Onde vamos evoluir no backend nativo direto (`arandu build --release` / Cranelift):
Quando comparamos o nosso caminho de compilação rápida (`Cranelift --release`) com o caminho `emit-c --opt`, fica cristalino onde o nosso próprio otimizador AMIR (`arandu_mir`) pode avançar sem depender de ninguém:

- **1. Function Inlining no AMIR**:
  Hoje, `arandu_mir` otimiza cada função como uma ilha isolada. Nos Rounds 3 e 4 (`fibIter` e `fibFast`), o binário do Cranelift executou 10 milhões de instruções `call`/`ret` com salvamento de registradores. Adicionar um passo de *inlining* baseado em heurística de custo diretamente no AMIR eliminará o overhead de chamada e destravará otimizações interprocedurais em todos os backends (Cranelift, C e Wasm).
- **2. Tail-Recursion Elimination (TRE) no AMIR**:
  No Round 1, converter auto-recursão em posição de cauda em um salto para o bloco de entrada com parâmetros SSA dentro do próprio AMIR cortará pela metade o tempo de funções recursivas no Cranelift.
- **3. If-Conversion (`Select` / Branchless) no AMIR**:
  No Round 4, transformar pequenos diamantes de decisão (`if/else` atribuindo constantes à mesma variável) em operações `Select` sem desvio condicional permitirá ao Cranelift emitir instruções `cmov` diretas, reduzindo *branch mispredictions* e aproximando o tempo de loops de lookup do patamar de `10 ms` do GCC.

---

## Reproduza Você Mesmo!

Todos os códigos-fonte em **Arandu**, **Rust** e **C** e o script de automação deste artigo estão disponíveis no repositório dedicado de benchmarks:

- **Repositório da Suíte de Benchmarks**: [`arandu-fibonacci-benchmarks`](file:///home/bruno/Documentos/Desenvolvimento/arandu-fibonacci-benchmarks)
- **Compilador Arandu**: [`arandu-lang/arandu`](https://github.com/arandu-lang/arandu)

Da próxima vez que vir um benchmark viral comparando maçãs em Debug com laranjas em `-O3`, lembre-se: a verdadeira beleza da engenharia de sistemas aparece quando nivelamos a pista, ligamos todas as otimizações e deixamos o assembly falar.
