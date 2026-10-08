
#include <stdio.h>
#include <stdint.h>

uint64_t fib_iter(uint64_t n) {
    uint64_t a = 0;
    uint64_t b = 1;
    for (uint64_t i = 0; i < n; i++) {
        uint64_t tmp = a + b;
        a = b;
        b = tmp;
    }
    return a;
}

int main(int argc, char **argv) {
    (void)argv;
    uint64_t base = (uint64_t)argc + 89ULL;
    uint64_t acc = 0;
    for (uint64_t i = 0; i < 10000000ULL; i++) {
        uint64_t n = base + (i & 3);
        acc += fib_iter(n);
    }
    printf("%lu\n", acc);
    return 0;
}
