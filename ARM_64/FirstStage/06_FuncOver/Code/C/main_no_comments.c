#include <stdio.h>

void function_int(int number) {
    printf("%d",number);
}

void function_double(double number) {
    printf("%f",number);
}

int main() {
    function_int(2);
    function_double(3.14);
    
    return 0;
}