#include <stdio.h>

void accum(int& acc, int number) {
    acc += number;
}

int main() {
    int accumulator = 0;
    int number = 5;

    printf("Before: %d\n",accumulator);
    accum(accumulator,number);
    printf("After: %d\n",accumulator);
    
    return 0;
}