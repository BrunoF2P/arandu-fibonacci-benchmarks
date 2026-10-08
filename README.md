# Arandu vs. Rust vs. C — The Ultimate Fibonacci Benchmark Suite

This repository contains the complete source code, prebuilt `0.1.9-dev` Linux toolchain, automation scripts, and official benchmark data for the article:

> **"Lies, Damned Lies, and Fibonacci Benchmarks: Pushing Rust, C, and Arandu to the Limit"**

Instead of comparing different algorithms with mismatched compiler flags (like the viral meme pitting `cargo run` in unoptimized Debug mode with $O(2^n)$ recursion against `gcc -O3` using Binet's $O(1)$ formula), this suite puts **Rust (`rustc`)**, **C (`gcc` and `clang`)**, and **Arandu (`Cranelift` and `C-Backend`)** head-to-head on **the exact same algorithms** under maximum optimization (`-O3 -march=native -flto`).

---

## Repository Structure

```text
arandu-fibonacci-benchmarks/
├── assets/
│   └── fibonacci_meme_comparison.jpg        # Original viral meme screenshot
├── scenarios/
│   ├── 01_naive_recursive/                  # O(2^n) Tree Recursion (0..=40, ~883.6M calls)
│   │   ├── arandu/
│   │   ├── c/
│   │   └── rust/
│   ├── 02_binet_formula/                    # O(1) Binet's Formula in f64 (10M iterations)
│   │   ├── arandu/
│   │   ├── c/
│   │   └── rust/
│   ├── 03_iterative_dp/                     # O(n) Iterative Dynamic Programming (10M calls)
│   │   ├── arandu/
│   │   ├── c/
│   │   └── rust/
│   ├── 04_fast_doubling/                    # O(log n) Fast Doubling Matrix Exp (10M calls)
│   │   ├── arandu/
│   │   ├── c/
│   │   └── rust/
│   └── 05_comptime_ctfe/                    # Compile-Time Evaluation (`comptime` vs `const fn`)
│       ├── arandu/
│       ├── c/
│       └── rust/
├── toolchain/                               # Prebuilt Arandu 0.1.9-dev binary, runtime & stdlib
├── BLOG_POST.md                             # Full English article for Medium / Official Website
├── README.md                                # This file
└── run_benchmarks.py                        # Automated runner (compiles, verifies parity & times)
```

---

## Official Results on GitHub Codespaces (`AMD EPYC 9V74` Zen 4 • `AVX2 / BMI2 / FMA`)

```text
OS / Kernel : Linux 6.8.0-1064-azure (x86_64) — Ubuntu 24.04 LTS
CPU         : AMD EPYC 9V74 80-Core Processor (2 vCPUs)
ISA Flags   : sse4_2 avx avx2 bmi1 bmi2 fma
Rustc       : rustc 1.99.0 (b940084d7 2026-09-28)
GCC         : gcc (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0
Clang       : Ubuntu clang version 18.1.3 (1ubuntu1)
Arandu      : arandu 0.1.8 / 0.1.9-dev (codex/comptime-core branch)
```

Execution times (`min` / `median` across 7 runs after warmup):

| Scenario | Arandu (`emit-c --opt` + GCC `-O3`) | Arandu (`emit-c --opt` + Clang `-O3`) | Arandu (`build --release` Cranelift) | Rust (`-C opt-level=3 -C lto=fat`) | C (`GCC -O3` / `Clang -O3`) |
| :--- | ---: | ---: | ---: | ---: | ---: |
| **01. Naive Recursive $O(2^n)$ (`0..=40`)** | **388.63 ms** (`425.45 ms`) | **769.63 ms** (`789.74 ms`) | 2434.93 ms (`2458.47 ms`) | 804.95 ms (`888.96 ms`) | **379.04 ms** (GCC) / 764.09 ms (Clang) |
| **02. Binet $O(1)$ FP (`10M` iter)** | **148.11 ms** 🏆 (`153.07 ms`) | **156.88 ms** 🥈 (`159.50 ms`) | **159.45 ms** 🥉 (`166.89 ms`) | 179.72 ms (`182.36 ms`) | 169.23 ms (GCC) / 162.18 ms (Clang) |
| **03. Iterative DP $O(n)$ (`10M` iter)** | 341.39 ms (`385.33 ms`) | **178.78 ms** 🥈 (`182.77 ms`) | 686.18 ms (`720.60 ms`) | **177.73 ms** 🏆 (`180.73 ms`) | 338.48 ms (GCC) / 179.99 ms (Clang) |
| **04. Fast Doubling $O(\log n)$ (`10M`)** | **99.85 ms** 🥈 (`101.37 ms`) | 143.06 ms (`144.05 ms`) | **127.52 ms** (`149.30 ms`) | **26.49 ms** 🏆 (`27.59 ms`) | 100.84 ms (GCC) / 143.81 ms (Clang) |
| **05. Compile-Time (`comptime` `[4]u64`)** | **6.63 ms** (`6.78 ms`) | **0.50 ms** 🏆 (`0.51 ms`) | **16.70 ms** (`18.50 ms`) | **1.24 ms** (`1.35 ms`) | *4.40 ms (GCC) / 0.82 ms (Clang) — static table* |

---

## How to Run in GitHub Codespaces or Locally

```bash
python3 run_benchmarks.py
```

---

## License

Dual-licensed under MIT or Apache-2.0, matching the main [Arandu](https://github.com/arandu-lang/arandu) repository.
