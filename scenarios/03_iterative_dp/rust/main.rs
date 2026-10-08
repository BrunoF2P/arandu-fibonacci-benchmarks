
fn fib_iter(n: u64) -> u64 {
    let mut a: u64 = 0;
    let mut b: u64 = 1;
    let mut i: u64 = 0;
    while i < n {
        let tmp = a.wrapping_add(b);
        a = b;
        b = tmp;
        i += 1;
    }
    a
}

fn main() {
    let base = (std::env::args().len() as u64) + 89;
    let mut acc: u64 = 0;
    let mut i: u64 = 0;
    while i < 10_000_000 {
        let n = base + (i & 3);
        acc = acc.wrapping_add(fib_iter(n));
        i += 1;
    }
    println!("{}", acc);
}
