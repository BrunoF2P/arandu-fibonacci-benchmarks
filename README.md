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
│   ├── 01_naive_recursive/                  # O(2^n) Tree Recursion (0..=40, ~866.99M calls)
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
| **01. Naive Recursive $O(2^n)$ (`0..=40`)** | **389.19 ms** (`405.16 ms`) | **765.16 ms** (`780.55 ms`) | 2430.62 ms (`2443.88 ms`) | 803.72 ms (`862.33 ms`) | **374.22 ms** (GCC) / 764.91 ms (Clang) |
| **02. Binet $O(1)$ FP (`10M` iter)** | **147.18 ms** 🏆 (`151.24 ms`) | **156.72 ms** 🥈 (`159.95 ms`) | **158.62 ms** 🥉 (`160.73 ms`) | 180.45 ms (`194.37 ms`) | 155.76 ms (GCC) / 161.14 ms (Clang) |
| **03. Iterative DP $O(n)$ (`10M` iter)** | 341.69 ms (`350.02 ms`) | **178.67 ms** 🥈 (`182.21 ms`) | 691.43 ms (`727.09 ms`) | **175.83 ms** 🏆 (`183.19 ms`) | 337.68 ms (GCC) / 179.85 ms (Clang) |
| **04. Fast Doubling $O(\log n)$ (`10M`)** | **99.86 ms** 🥈 (`100.59 ms`) | 143.39 ms (`144.59 ms`) | **126.47 ms** (`132.61 ms`) | **26.50 ms** 🏆 (`27.49 ms`) | 99.99 ms (GCC) / 144.50 ms (Clang) |
| **05. Compile-Time (`comptime` `[4]u64`)** | 8.29 ms (`8.50 ms`) | **0.80 ms** 🏆 (`0.84 ms`) | **11.90 ms** (`12.32 ms`) | 1.23 ms (`1.36 ms`) | *4.41 ms (GCC) / 0.94 ms (Clang) — static table* |

---

## How to Run in GitHub Codespaces or Locally

```bash
python3 run_benchmarks.py
```

---

## License

Dual-licensed under MIT or Apache-2.0, matching the main [Arandu](https://github.com/arandu-lang/arandu) repository.
