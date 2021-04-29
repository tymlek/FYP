#include <stdio.h>

class A {
public:
    void setX(int num) {
        this->x = num;
    }

    int getX() {
        return this->x;
    }
private:
    int x;
};

int main() {
    A a;
    int number = 5;

    a.setX(number);

    printf("Property x: %d\n",a.getX());
    
    return 0;
}