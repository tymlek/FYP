#include <stdio.h>

int factorial(int n) {
    if (n < 0) {
        throw "Negative Argument to factorial";
    }

    if (n > 0) {
        return (n * factorial(n-1));
    }

    return 1;
}

int main() {
    try {
        int n = factorial(10);
        printf("factorial(10) = %d",n);
    }
    catch (const char* s) {
        printf("factorial threw exception: %s",s);
    }

    return 0;
}