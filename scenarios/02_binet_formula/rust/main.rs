use std::hint::black_box;

#[inline(never)]
fn fib_binet(n: u64) -> u64 {
    const GOLDEN_RATIO: f64 = 1.618033988749895;
    const INV_SQRT5: f64 = 0.4472135954999579;
    (GOLDEN_RATIO.powf(n as f64) * INV_SQRT5 + 0.5) as u64
}

fn main() {
    let mut acc: u64 = 0;
    for i in 0..10_000_000u64 {
        let n = black_box(i % 71);
        acc = acc.wrapping_add(fib_binet(n));
    }
    println!("{}", acc);
}
