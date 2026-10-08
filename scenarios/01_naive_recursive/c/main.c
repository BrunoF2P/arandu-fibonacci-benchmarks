#include <stdio.h>
#include <stdint.h>

uint64_t fibonacci(uint64_t n) {
    if (n <= 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
}

int main(void) {
    for (uint64_t n = 0; n <= 40; n++) {
        printf("%lu\n", fibonacci(n));
    }
    return 0;
}
