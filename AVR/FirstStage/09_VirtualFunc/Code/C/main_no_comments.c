typedef struct A A;
struct A {
	void** vTable;
	int value;
};

int f_A(A* this) {
	return 0;
}

void* vTable_A[] = {
	(void*) &f_A
};

void constructor_A(A* this) {
	this->vTable = vTable_A;
	this->value = 0;
}

typedef struct B B;
struct B {
	A a;
};

int f_B(B* this) {
	return 1;
}

void* vTable_B[] = {
	(void*) &f_B
};

void constructor_B(B* this) {
	constructor_A((A*) this);
	this->a.vTable = vTable_B;
}

int main(void)
{
	B b;
	A* aPtr;
	
	constructor_B(&b);
	typedef void (*f_A_Type) (A*);
	
	aPtr = (A*) &b;
	((f_A_Type) aPtr->vTable[0]) (aPtr);
	
	while (1)
	{
		
	}
}