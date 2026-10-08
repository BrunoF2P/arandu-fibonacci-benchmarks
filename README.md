# Arandu vs. Rust vs. C — The Ultimate Fibonacci Benchmark Suite

Este repositório contém os códigos-fonte dos cenários, a toolchain Arandu `0.1.8` incluída, scripts de automação e resultados históricos registrados para o artigo:

> **"Mentiras, Malditas Mentiras e Benchmarks de Fibonacci: Colocando Rust, C e Arandu no Limite"**

Em vez de comparar algoritmos diferentes com flags desiguais (como no famoso meme que coloca `cargo run` em modo Debug recursivo $O(2^n)$ contra `gcc -O3` usando a Fórmula de Binet $O(1)$), esta suíte compara **Rust (`rustc`)**, **C (`gcc` e `clang`)** e **Arandu (`Cranelift` e `C-Backend`)** em cinco cenários. Os algoritmos coincidem dentro dos cenários 1–4. No cenário 5, C e Rust consultam uma tabela e Arandu seleciona entre quatro valores com condicionais; esse round também compara formas diferentes de acesso. As flags nativas incluem `-O3 -march=native -flto` para Rust/C e os caminhos Arandu documentados.

---

## Resultados históricos registrados no GitHub Codespaces (`AMD EPYC 9V74` Zen 4 • `AVX2 / BMI2 / FMA`)

```text
OS / Kernel : Linux 6.8.0-1064-azure (x86_64) — Ubuntu 24.04 LTS
CPU         : AMD EPYC 9V74 80-Core Processor (2 vCPUs)
ISA Flags   : sse4_2 avx avx2 bmi1 bmi2 fma
Rustc       : rustc 1.99.0 (b940084d7 2026-09-28)
GCC         : gcc (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0
Clang       : Ubuntu clang version 18.1.3 (1ubuntu1)
Arandu      : arandu 0.1.8 / 0.1.9-dev (branch codex/comptime-core)
```

Tempos de execução registrados (`min` / `mediana` de 7 rodadas após warmup). Os fontes e o runner foram corrigidos desde essa medição; estes valores devem ser lidos como resultados históricos daquela execução e não como garantia de que serão reproduzidos pelo estado atual do repositório:

| Cenário | Arandu (`emit-c --opt` + GCC `-O3`) | Arandu (`emit-c --opt` + Clang `-O3`) | Arandu (`build --release` Cranelift) | Rust (`-C opt-level=3 -C lto=fat`) | C (`GCC -O3` / `Clang -O3`) |
| :--- | ---: | ---: | ---: | ---: | ---: |
| **01. Recursivo $O(2^n)$ (`0..=40`)** | **388.63 ms** (`425.45 ms`) | **769.63 ms** (`789.74 ms`) | 2434.93 ms (`2458.47 ms`) | 804.95 ms (`888.96 ms`) | **379.04 ms** (GCC) / 764.09 ms (Clang) |
| **02. Binet $O(1)$ FP (`10M` iter)** | **148.11 ms** 🏆 (`153.07 ms`) | **156.88 ms** 🥈 (`159.50 ms`) | **159.45 ms** 🥉 (`166.89 ms`) | 179.72 ms (`182.36 ms`) | 169.23 ms (GCC) / 162.18 ms (Clang) |
| **03. Iterativo $O(n)$ (`10M` iter)** | 341.39 ms (`385.33 ms`) | **178.78 ms** 🥈 (`182.77 ms`) | 686.18 ms (`720.60 ms`) | **177.73 ms** 🏆 (`180.73 ms`) | 338.48 ms (GCC) / 179.99 ms (Clang) |
| **04. Fast Doubling $O(\log n)$ (`10M`)** | **99.85 ms** 🥈 (`101.37 ms`) | 143.06 ms (`144.05 ms`) | **127.52 ms** (`149.30 ms`) | **26.49 ms** 🏆 (`27.59 ms`) | 100.84 ms (GCC) / 143.81 ms (Clang) |
| **05. Compile-Time (`comptime` / `const fn`)** | 7.17 ms (`8.55 ms`) | **4.81 ms** (`4.87 ms`) | **16.70 ms** (`18.50 ms`) | **1.24 ms** (`1.35 ms`) | *4.40 ms (GCC) / 0.82 ms (Clang) — tabela manual* |

---

## Como Executar no GitHub Codespaces ou Localmente

```bash
python3 run_benchmarks.py  # usa a toolchain incluída no repositório

# Para testar o compilador deste workspace Arandu-Lang:
ARANDU_BIN=../Arandu-Lang/target/debug/arandu_cli \
ARANDU_STDLIB=../Arandu-Lang/stdlib python3 run_benchmarks.py
```

Depois das medições, o runner grava o disassembly dos executáveis em `build/assembly/`, com um arquivo `.asm` por implementação/cenário e `MANIFEST.txt` com plataforma, ferramenta e caminhos. Ele tenta `llvm-objdump`, `objdump`, `otool` ou `dumpbin`, conforme o que estiver instalado. A geração ocorre fora da janela cronometrada; se nenhum disassembler estiver disponível, o runner informa isso e mantém os resultados dos benchmarks.

### Verificação local nesta máquina (2026-10-08)

Esta execução serve para verificar a suíte e ilustrar a variação entre máquinas; não substitui nem reproduz os tempos do Codespaces acima.

```text
CPU         : Intel Xeon E5-2667 v2 @ 3.30 GHz
ISA         : AVX, sem AVX2
OS          : Linux 7.2.7-1-cachyos x86_64
Rustc       : 1.98.1 (LLVM 22.1.8)
GCC         : 16.2.1
Clang       : 23.1.1
Arandu      : toolchain/bin/arandu (0.1.8 empacotado)
Stdlib      : toolchain/stdlib
Medição     : 1 chamada de validação/aquecimento + 7 execuções; min / mediana
```

| Cenário | Implementação | Min (ms) | Mediana (ms) |
| :--- | :--- | ---: | ---: |
| Recursivo | Rust | 991.83 | 994.48 |
|  | C / GCC | 560.45 | 562.17 |
|  | C / Clang | 918.02 | 920.94 |
|  | Arandu / Cranelift | 1857.10 | 1860.04 |
|  | Arandu C / GCC | 534.27 | 536.15 |
|  | Arandu C / Clang | 918.60 | 919.16 |
| Binet | Rust | 411.42 | 413.43 |
|  | C / GCC | 341.49 | 344.88 |
|  | C / Clang | 355.50 | 358.32 |
|  | Arandu / Cranelift | 350.74 | 352.85 |
|  | Arandu C / GCC | 335.63 | 337.30 |
|  | Arandu C / Clang | 330.58 | 333.13 |
| Iterativo | Rust | 228.63 | 230.75 |
|  | C / GCC | 621.36 | 623.96 |
|  | C / Clang | 235.05 | 235.77 |
|  | Arandu / Cranelift | 896.52 | 898.34 |
|  | Arandu C / GCC | 624.91 | 626.88 |
|  | Arandu C / Clang | 235.32 | 237.52 |
| Fast Doubling | Rust | 122.64 | 124.57 |
|  | C / GCC | 155.32 | 157.27 |
|  | C / Clang | 124.07 | 125.49 |
|  | Arandu / Cranelift | 208.59 | 210.05 |
|  | Arandu C / GCC | 154.00 | 155.03 |
|  | Arandu C / Clang | 125.34 | 126.44 |
| Comptime / const | Rust | 1.41 | 1.53 |
|  | C / GCC | 6.63 | 6.72 |
|  | C / Clang | 0.47 | 0.50 |
|  | Arandu / Cranelift | 29.89 | 31.43 |
|  | Arandu C / GCC | 9.87 | 10.14 |
|  | Arandu C / Clang | 0.48 | 0.48 |

As saídas dos seis binários em cada cenário coincidiram com referências independentes. O caso Binet percorre `n = 0..70`, intervalo em que os valores de Fibonacci cabem em `u64`; nesta execução, todos os caminhos produziram o checksum `14864523082006142394`. Também comparei cada expoente individualmente: **71 de 71 resultados** foram idênticos entre Cranelift do workspace, `pow` em C e `powf` em Rust. O binário Cranelift chama `pow@GLIBC_2.29` e a conversão `f64 → u64` recebe valores dentro do intervalo representável.

A divergência observada na tentativa reduzida veio de misturar a saída de C/Rust compilados com 100 mil iterações e um binário Cranelift antigo de 10 milhões. O runner agora remove o diretório de build do Arandu antes de compilar, exige um único binário recém-gerado e compara a saída com uma referência independente.

---

## Licença

Distribuído sob as licenças MIT ou Apache-2.0, acompanhando o projeto principal [Arandu](https://github.com/arandu-lang/arandu).
