class A {
	public:
	A();
	virtual int f();
	
	private:
	int value;
};

A::A() {
	value = 0;
}

int A::f() {
	return 0;
}

class B : public A {
	public:
	B();
	virtual int f() override;
};

B::B() {
	
}

int B::f() {
	return 1;
}


int main(void)
{
	B b;
	A* aPtr = &b;
	
	aPtr->f();
    
    return 0;
}