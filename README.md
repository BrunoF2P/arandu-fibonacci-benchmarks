# Arandu vs. Rust vs. C — The Ultimate Fibonacci Benchmark Suite

Este repositório contém o código-fonte completo, a toolchain `0.1.9-dev` pré-compilada, scripts de automação e dados oficiais do artigo:

> **"Mentiras, Malditas Mentiras e Benchmarks de Fibonacci: Colocando Rust, C e Arandu no Limite"**

Em vez de comparar algoritmos diferentes com flags desiguais (como no famoso meme que coloca `cargo run` em modo Debug recursivo $O(2^n)$ contra `gcc -O3` usando a Fórmula de Binet $O(1)$), esta suíte coloca **Rust (`rustc`)**, **C (`gcc` e `clang`)** e **Arandu (`Cranelift` e `C-Backend`)** lado a lado sob **exatamente os mesmos algoritmos** e com otimização máxima (`-O3 -march=native -flto`).

---

## Resultados Oficiais no GitHub Codespaces (`AMD EPYC 9V74` Zen 4 • `AVX2 / BMI2 / FMA`)

```text
OS / Kernel : Linux 6.8.0-1064-azure (x86_64) — Ubuntu 24.04 LTS
CPU         : AMD EPYC 9V74 80-Core Processor (2 vCPUs)
ISA Flags   : sse4_2 avx avx2 bmi1 bmi2 fma
Rustc       : rustc 1.99.0 (b940084d7 2026-09-28)
GCC         : gcc (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0
Clang       : Ubuntu clang version 18.1.3 (1ubuntu1)
Arandu      : arandu 0.1.8 / 0.1.9-dev (branch codex/comptime-core)
```

Tempos de execução (`min` / `mediana` de 7 rodadas após warmup):

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
python3 run_benchmarks.py
```

---

## Licença

Distribuído sob as licenças MIT ou Apache-2.0, acompanhando o projeto principal [Arandu](https://github.com/arandu-lang/arandu).
