
#include <stdio.h>
#include <stdint.h>

uint64_t fib_fast(uint64_t n) {
    if (n == 0) return 0;
    uint64_t a = 0;
    uint64_t b = 1;
    uint64_t bit = 1ULL << 6;
    while (bit > n) {
        bit >>= 1;
    }
    while (bit > 0) {
        uint64_t d = a * ((b << 1) - a);
        uint64_t e = a * a + b * b;
        a = d;
        b = e;
        if ((n & bit) != 0) {
            uint64_t c = a + b;
            a = b;
            b = c;
        }
        bit >>= 1;
    }
    return a;
}

int main(int argc, char **argv) {
    (void)argv;
    uint64_t base = (uint64_t)argc + 89ULL;
    uint64_t acc = 0;
    for (uint64_t i = 0; i < 10000000ULL; i++) {
        uint64_t n = base + (i & 3);
        acc += fib_fast(n);
    }
    printf("%lu\n", acc);
    return 0;
}
