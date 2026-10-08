#include <stdio.h>
#include <stdint.h>
#include <math.h>

__attribute__((noinline))
uint64_t fib_binet(uint64_t n) {
    const double golden_ratio = 1.618033988749895;
    const double inv_sqrt5 = 0.4472135954999579;
    return (uint64_t)(pow(golden_ratio, (double)n) * inv_sqrt5 + 0.5);
}

int main(void) {
    uint64_t acc = 0;
    for (uint64_t i = 0; i < 10000000ULL; i++) {
        uint64_t n = i % 71;
        asm volatile("" : "+r"(n));
        acc += fib_binet(n);
    }
    printf("%lu\n", acc);
    return 0;
}
