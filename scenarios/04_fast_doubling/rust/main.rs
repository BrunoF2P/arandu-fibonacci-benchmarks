
fn fib_fast(n: u64) -> u64 {
    if n == 0 { return 0; }
    let mut a: u64 = 0;
    let mut b: u64 = 1;
    let mut bit: u64 = 1 << 6;
    while bit > n {
        bit >>= 1;
    }
    while bit > 0 {
        let d = a.wrapping_mul(b.wrapping_shl(1).wrapping_sub(a));
        let e = a.wrapping_mul(a).wrapping_add(b.wrapping_mul(b));
        a = d;
        b = e;
        if (n & bit) != 0 {
            let c = a.wrapping_add(b);
            a = b;
            b = c;
        }
        bit >>= 1;
    }
    a
}

fn main() {
    let base = (std::env::args().len() as u64) + 89;
    let mut acc: u64 = 0;
    let mut i: u64 = 0;
    while i < 10_000_000 {
        let n = base + (i & 3);
        acc = acc.wrapping_add(fib_fast(n));
        i += 1;
    }
    println!("{}", acc);
}
