#include <stdio.h>

void function(int number) {
    printf("%d",number);
}

void function(double number) {
    printf("%f",number);
}

int main() {
    function(2);
    function(3.14);
    
    return 0;
}