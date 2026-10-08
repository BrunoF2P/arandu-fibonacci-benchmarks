#!/usr/bin/env python3
"""
Suíte Reprodutível de Benchmarks: Rust vs C (GCC/Clang) vs Arandu (Cranelift & C-Backend)
Pronta para execução em ambientes limpos como GitHub Codespaces / Ubuntu / Debian / Arch.
"""
import glob
import os
import platform
import re
import shutil
import shlex
import statistics
import subprocess
import sys
import time

ROOT = os.path.dirname(os.path.abspath(__file__))
BUILD_DIR = os.path.join(ROOT, "build")
os.makedirs(BUILD_DIR, exist_ok=True)


def detect_arandu():
    env_bin = os.environ.get("ARANDU_BIN")
    env_std = os.environ.get("ARANDU_STDLIB")

    bin_candidates = [
        env_bin,
        os.path.join(ROOT, "toolchain", "bin", "arandu"),
        os.path.abspath(os.path.join(ROOT, "../Arandu-Lang/target/release/arandu_cli")),
        os.path.abspath(os.path.join(ROOT, "../arandu/target/release/arandu_cli")),
        shutil.which("arandu"),
        shutil.which("arandu_cli"),
        os.path.expanduser("~/.local/arandu/bin/arandu"),
    ]
    arandu_bin = next((b for b in bin_candidates if b and os.path.isfile(b) and os.access(b, os.X_OK)), None)
    if not arandu_bin:
        print(
            "Erro: Binário do Arandu não encontrado.\n"
            "Defina ARANDU_BIN=/caminho/para/arandu_cli ou instale o Arandu no PATH.",
            file=sys.stderr,
        )
        sys.exit(1)

    arandu_bin = os.path.realpath(arandu_bin)
    std_candidates = [
        env_std,
        os.path.join(ROOT, "toolchain", "stdlib"),
        os.path.abspath(os.path.join(ROOT, "../Arandu-Lang/stdlib")),
        os.path.abspath(os.path.join(ROOT, "../arandu/stdlib")),
        os.path.abspath(os.path.join(os.path.dirname(arandu_bin), "../stdlib")),
        os.path.abspath(os.path.join(os.path.dirname(arandu_bin), "../../stdlib")),
        os.path.expanduser("~/.local/arandu/stdlib"),
    ]
    arandu_std = next((s for s in std_candidates if s and os.path.isdir(s)), None)
    return arandu_bin, arandu_std


SCENARIOS = [
    ("01_naive_recursive", "Round 1: Recursão em Árvore O(2^n) (0..=40)", ""),
    ("02_binet_formula",   "Round 2: Fórmula de Binet O(1) FP (10M iter)", "-lm"),
    ("03_iterative_dp",    "Round 3: Iterativo / DP O(n) Exato (10M iter)", ""),
    ("04_fast_doubling",   "Round 4: Fast Doubling O(log n) Exato (10M iter)", ""),
    ("05_comptime_ctfe",   "Round 5: Compile-Time Evaluation (`comptime` vs `const fn`)", ""),
]


def cmd_output(cmd):
    try:
        return subprocess.check_output(cmd, shell=True, stderr=subprocess.STDOUT, text=True).strip().splitlines()[0]
    except Exception:
        return "N/A"


def print_environment(arandu_bin, arandu_std):
    cpu_model = "Unknown CPU"
    avx_flags = []
    if os.path.exists("/proc/cpuinfo"):
        with open("/proc/cpuinfo", "r", encoding="utf-8", errors="ignore") as f:
            for line in f:
                if line.startswith("model name") and cpu_model == "Unknown CPU":
                    cpu_model = line.split(":", 1)[1].strip()
                elif line.startswith("flags") and not avx_flags:
                    flags = set(line.split(":", 1)[1].strip().split())
                    avx_flags = [fl for fl in ("sse4_2", "avx", "avx2", "bmi1", "bmi2", "fma", "avx512f") if fl in flags]

    print("================================================================================")
    print("AMBIENTE DE BENCHMARK (REPRODUTÍVEL)")
    print("================================================================================")
    print(f"OS / Kernel : {platform.system()} {platform.release()} ({platform.machine()})")
    print(f"CPU         : {cpu_model} ({os.cpu_count()} vCPUs)")
    print(f"ISA Flags   : {' '.join(avx_flags) if avx_flags else 'default'}")
    print(f"Rustc       : {cmd_output('rustc --version')}")
    print(f"GCC         : {cmd_output('gcc --version')}")
    print(f"Clang       : {cmd_output('clang --version')}")
    print(f"Arandu      : {cmd_output(f'{arandu_bin} --version')} ({arandu_bin})")
    print(f"Stdlib      : {arandu_std or 'default bundled'}")
    print("================================================================================\n")


def run_cmd(cmd):
    subprocess.run(cmd, shell=True, check=True)


def bench_binary(path, runs=7):
    res = subprocess.run([path], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, check=True)
    full_out = res.stdout.strip()
    last_line = full_out.splitlines()[-1] if full_out else ""
    times = []
    for _ in range(runs):
        t0 = time.perf_counter()
        subprocess.run([path], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, check=True)
        t1 = time.perf_counter()
        times.append((t1 - t0) * 1000.0)
    return min(times), statistics.median(times), statistics.mean(times), statistics.stdev(times), last_line, full_out


def expected_output(folder):
    """Independent reference values for the fixed no-extra-arguments workload."""
    mask = (1 << 64) - 1

    def fib(n):
        a, b = 0, 1
        for _ in range(n):
            a, b = b, a + b
        return a

    if folder == "01_naive_recursive":
        return "\n".join(str(fib(n)) for n in range(41))
    if folder == "02_binet_formula":
        # For n in 0..70, Binet's rounded result is the exact integer Fibonacci value.
        return str(sum(fib(n) * (10_000_000 // 71 + (n < 10_000_000 % 71)) for n in range(71)) & mask)
    if folder in ("03_iterative_dp", "04_fast_doubling"):
        # argc/args().len()/argsLen() are all 1 when invoked without extra arguments.
        base = 1 + 89
        return str(sum(fib(base + r) * (10_000_000 // 4) for r in range(4)) & mask)
    if folder == "05_comptime_ctfe":
        return str(sum(fib(90 + r) * (10_000_000 // 4) for r in range(4)) & mask)
    raise ValueError(f"No reference output for scenario {folder}")


def disassemblers():
    """Return installed native disassemblers in preferred order."""
    tools = [(name, shutil.which(name)) for name in ("llvm-objdump", "objdump")]
    if sys.platform == "darwin":
        path = shutil.which("otool")
        if path:
            tools.append(("otool", path))
    if os.name == "nt":
        path = shutil.which("dumpbin")
        if path:
            tools.append(("dumpbin", path))
    return [(name, path) for name, path in tools if path]


def emit_assembly_dumps(targets):
    """Disassemble all benchmark executables after timing has finished."""
    tools = disassemblers()
    if not tools:
        print("Assembly não gerado: instale llvm-objdump/objdump (ou o disassembler nativo da plataforma).")
        return

    out_dir = os.path.join(BUILD_DIR, "assembly")
    shutil.rmtree(out_dir, ignore_errors=True)
    os.makedirs(out_dir, exist_ok=True)
    manifest = [
        "Disassembly dos executáveis dos benchmarks",
        f"Plataforma: {platform.platform()} ({platform.machine()})",
        f"Ferramentas disponíveis: {', '.join(path for _, path in tools)}",
        "Os arquivos foram gerados depois das medições de tempo.",
        "",
    ]
    for folder, label, binary in targets:
        safe_label = re.sub(r"[^A-Za-z0-9_.-]+", "_", label).strip("_")
        filename = f"{folder}__{safe_label}.asm"
        output_path = os.path.join(out_dir, filename)
        result = None
        cmd = None
        failures = []
        for tool, tool_path in tools:
            if tool == "llvm-objdump":
                candidate_cmd = [tool_path, "-d", "--demangle", binary]
            elif tool == "objdump":
                candidate_cmd = [tool_path, "-d", "-C", binary]
            elif tool == "otool":
                candidate_cmd = [tool_path, "-tvV", binary]
            else:  # dumpbin
                candidate_cmd = [tool_path, "/DISASM", binary]
            try:
                result = subprocess.run(
                    candidate_cmd, capture_output=True, text=True, errors="replace", check=True
                )
                cmd = candidate_cmd
                break
            except (OSError, subprocess.CalledProcessError) as exc:
                detail = getattr(exc, "stderr", None) or str(exc)
                failures.append(f"{tool}: {detail.strip()}")
        if result is None:
            print(f"  Assembly falhou para {label} ({binary}): {'; '.join(failures)}")
            continue

        with open(output_path, "w", encoding="utf-8", newline="\n") as f:
            f.write(f"; Benchmark: {folder}\n; Implementação: {label}\n")
            f.write(f"; Executável: {os.path.abspath(binary)}\n")
            f.write(f"; Comando: {shlex.join(cmd)}\n\n")
            f.write(result.stdout)
            if result.stderr:
                f.write("\n; stderr do disassembler:\n")
                f.write(result.stderr)
        manifest.append(f"{filename}\t{binary}")
        print(f"  Assembly: {output_path}")

    with open(os.path.join(out_dir, "MANIFEST.txt"), "w", encoding="utf-8", newline="\n") as f:
        f.write("\n".join(manifest) + "\n")


def main():
    arandu_bin, arandu_std = detect_arandu()
    print_environment(arandu_bin, arandu_std)
    std_flag = f'--stdlib-path "{arandu_std}"' if arandu_std else ""

    assembly_targets = []
    for folder, title, extra_libs in SCENARIOS:
        sdir = os.path.join(ROOT, "scenarios", folder)
        bdir = os.path.join(BUILD_DIR, folder)
        os.makedirs(bdir, exist_ok=True)

        rust_src = os.path.join(sdir, "rust", "main.rs")
        c_src = os.path.join(sdir, "c", "main.c")
        aru_pkg = os.path.join(sdir, "arandu")
        aru_src = os.path.join(aru_pkg, "src", "main.aru")

        rust_bin = os.path.join(bdir, "rust_opt")
        c_gcc_bin = os.path.join(bdir, "c_gcc")
        c_clang_bin = os.path.join(bdir, "c_clang")
        aru_c_src = os.path.join(bdir, "arandu.emitted.c")
        aru_gcc_bin = os.path.join(bdir, "arandu_c_gcc")
        aru_clang_bin = os.path.join(bdir, "arandu_c_clang")

        run_cmd(f'rustc -C opt-level=3 -C target-cpu=native -C codegen-units=1 -C lto=fat "{rust_src}" -o "{rust_bin}"')
        run_cmd(f'gcc -O3 -march=native -flto "{c_src}" {extra_libs} -o "{c_gcc_bin}"')
        run_cmd(f'clang -O3 -march=native -flto "{c_src}" {extra_libs} -o "{c_clang_bin}"')
        # Prevent selecting a stale executable left by an earlier compiler build.
        shutil.rmtree(os.path.join(aru_pkg, "target"), ignore_errors=True)
        run_cmd(f'"{arandu_bin}" build "{aru_pkg}" --release {std_flag} >/dev/null')
        run_cmd(f'"{arandu_bin}" emit-c "{aru_src}" --opt {std_flag} > "{aru_c_src}"')
        run_cmd(f'gcc -O3 -march=native -flto "{aru_c_src}" {extra_libs} -o "{aru_gcc_bin}"')
        run_cmd(f'clang -O3 -march=native -flto "{aru_c_src}" {extra_libs} -o "{aru_clang_bin}"')

        aru_clif_bins = [
            p for p in glob.glob(os.path.join(aru_pkg, "target", "release", "**", "bin", "*"), recursive=True)
            if os.path.isfile(p) and os.access(p, os.X_OK)
        ]
        if len(aru_clif_bins) != 1:
            raise RuntimeError(
                f"Esperado exatamente um binário Cranelift recém-compilado em "
                f"{aru_pkg}/target/release; encontrados: {aru_clif_bins}"
            )
        aru_clif_bin = aru_clif_bins[0]

        print(f"=== {title} ===")
        candidates = [
            ("Rust (-O3, lto=fat)", rust_bin),
            ("C (GCC -O3 -march=native -flto)", c_gcc_bin),
            ("C (Clang -O3 -march=native -flto)", c_clang_bin),
            ("Arandu (Cranelift --release)", aru_clif_bin),
            ("Arandu (emit-c --opt + GCC -O3)", aru_gcc_bin),
            ("Arandu (emit-c --opt + Clang -O3)", aru_clang_bin),
        ]
        assembly_targets.extend((folder, label, binary) for label, binary in candidates)

        expected = expected_output(folder)
        for label, binary in candidates:
            mn, med, mean, sd, last_line, full_out = bench_binary(binary)
            if full_out != expected:
                raise AssertionError(
                    f"Saída incorreta em {label} no cenário {folder}: "
                    f"esperado {expected!r}, recebido {full_out!r}"
                )
            print(f"  {label:38s} | min: {mn:7.2f} ms | med: {med:7.2f} ms | mean: {mean:7.2f} ± {sd:4.2f} ms | out={last_line}")
        print()

    print("=== Gerando assembly para análise (fora da janela de medição) ===")
    emit_assembly_dumps(assembly_targets)


if __name__ == "__main__":
    main()
