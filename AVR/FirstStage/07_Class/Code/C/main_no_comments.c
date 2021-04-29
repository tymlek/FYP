#include <stdio.h>

struct A {
	int x;
};

void setX_A(struct A* this, int num) {
	this->x = num;
}

int getX_A(struct A* this) {
	return this->x;
}

int main() {
	struct A a;
	int number = 5;

	setX_A(&a,number);

	printf("Property x: %d\n",getX_A(&a));
	
	while (1) {
		
	}
}