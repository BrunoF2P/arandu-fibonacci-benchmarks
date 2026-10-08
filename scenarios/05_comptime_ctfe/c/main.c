#include <stdio.h>
#include <stdint.h>

// Em C99/C11 não há avaliação de funções arbitrárias com loops em compile-time
// (como `comptime` no Arandu ou `const fn` no Rust), exigindo constantes pré-expandidas.
static const uint64_t FIB_TABLE[4] = {
    2880067194370816120ULL,
    4660046610375530309ULL,
    7540113804746346429ULL,
    12200160415121876738ULL
};

int main(int argc, char **argv) {
    (void)argv;
    uint64_t base = (uint64_t)argc - 1ULL;
    uint64_t acc = 0;
    for (uint64_t i = 0; i < 10000000ULL; i++) {
        acc += FIB_TABLE[(base + i) & 3ULL];
    }
    printf("%lu\n", acc);
    return 0;
}
