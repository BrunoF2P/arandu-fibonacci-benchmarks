
const fn fib_const(n: usize) -> u64 {
    if n == 0 { return 0; }
    let mut a: u64 = 0;
    let mut b: u64 = 1;
    let mut i: usize = 1;
    while i < n {
        let tmp = a + b;
        a = b;
        b = tmp;
        i += 1;
    }
    b
}

const FIB_TABLE: [u64; 4] = [fib_const(90), fib_const(91), fib_const(92), fib_const(93)];

fn main() {
    let base = (std::env::args().len() as u64) - 1;
    let mut acc: u64 = 0;
    let mut i: u64 = 0;
    while i < 10_000_000 {
        let idx = ((base + i) & 3) as usize;
        acc = acc.wrapping_add(FIB_TABLE[idx]);
        i += 1;
    }
    println!("{}", acc);
}
