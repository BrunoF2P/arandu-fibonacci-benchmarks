# Arandu vs. Rust vs. C — The Ultimate Fibonacci Benchmark Suite

Este repositório contém o código-fonte completo, scripts de automação e dados do artigo:

> **"Mentiras, Malditas Mentiras e Benchmarks de Fibonacci: Colocando Rust, C e Arandu no Limite"**

Em vez de comparar algoritmos diferentes com flags desiguais (como no famoso meme que coloca `cargo run` em modo Debug recursivo $O(2^n)$ contra `gcc -O3` usando a Fórmula de Binet $O(1)$), esta suíte coloca **Rust (`rustc`)**, **C (`gcc` e `clang`)** e **Arandu (`Cranelift` e `C-Backend`)** lado a lado sob **exatamente os mesmos algoritmos** e com otimização máxima (`-O3 -march=native -flto`).

---

## Estrutura do Repositório

```text
arandu-fibonacci-benchmarks/
├── assets/
│   └── fibonacci_meme_comparison.jpg        # Print original do meme
├── scenarios/
│   ├── 01_naive_recursive/                  # Recursão em Árvore O(2^n) (0..=40, ~883,6M chamadas)
│   │   ├── arandu/
│   │   ├── c/
│   │   └── rust/
│   ├── 02_binet_formula/                    # Fórmula de Binet O(1) em f64 (10M iterações)
│   │   ├── arandu/
│   │   ├── c/
│   │   └── rust/
│   ├── 03_iterative_dp/                     # Programação Dinâmica Iterativa O(n) (10M chamadas)
│   │   ├── arandu/
│   │   ├── c/
│   │   └── rust/
│   ├── 04_fast_doubling/                    # Exponenciação Rápida Fast Doubling O(log n) (10M chamadas)
│   │   ├── arandu/
│   │   ├── c/
│   │   └── rust/
│   └── 05_comptime_ctfe/                    # Avaliação em Compile-Time (`comptime` vs `const fn`)
│       ├── arandu/
│       ├── c/
│       └── rust/
├── BLOG_POST.md                             # Artigo completo para Medium / Site Oficial
├── README.md                                # Este arquivo
└── run_benchmarks.py                        # Runner automatizado (compila, valida paridade e mede tempos)
```

---

## Resumo dos Resultados (`x86_64` Linux)

Ambiente: `rustc 1.97.1`, `gcc 16.2.1`, `clang 23.1.1`, `arandu 0.1.9-dev` (`codex/comptime-core`). Mediana de 7 execuções (após warmup):

| Cenário | Arandu (`emit-c --opt` + GCC/Clang `-O3`) | Arandu (`build --release` Cranelift) | Rust (`-C opt-level=3 -C lto=fat`) | C (`-O3 -march=native -flto`) |
| :--- | ---: | ---: | ---: | ---: |
| **01. Recursivo $O(2^n)$ (`0..=40`)** | **534.93 ms** (GCC) | 1859.44 ms | 995.74 ms | 561.75 ms (GCC) / 919.21 ms (Clang) |
| **02. Binet $O(1)$ FP (`10M` iter)** | **335.32 ms** (Clang) | **352.85 ms** | 414.86 ms | 343.56 ms (GCC) / 356.07 ms (Clang) |
| **03. Iterativo $O(n)$ (`10M` iter)** | **236.12 ms** (Clang) | 896.04 ms | **229.38 ms** | 235.25 ms (Clang) / 625.75 ms (GCC) |
| **04. Fast Doubling $O(\log n)$ (`10M`)** | **126.35 ms** (Clang) | 211.63 ms | **124.03 ms** | 124.72 ms (Clang) / 154.35 ms (GCC) |
| **05. Compile-Time (`comptime` / `const fn`)** | **0.52 ms** (Clang) / **10.14 ms** (GCC) | **30.01 ms** | **1.45 ms** | *N/A (tabela manual estática)* |

---

## Como Executar a Suíte Localmente

### Pré-requisitos
- `rustc` (1.80+)
- `gcc` e `clang`
- `python3` (3.10+)
- Compilador **Arandu** (`0.1.9-dev` ou superior com suporte a `comptime`)

### Executando todos os cenários
```bash
# Caso o binário do Arandu esteja em outro caminho, defina ARANDU_BIN e ARANDU_STDLIB:
export ARANDU_BIN=/caminho/para/arandu_cli
export ARANDU_STDLIB=/caminho/para/stdlib

python3 run_benchmarks.py
```

---

## Licença

Distribuído sob as licenças MIT ou Apache-2.0, acompanhando o projeto principal [Arandu](https://github.com/arandu-lang/arandu).
