/* Simple inheritance in C++ */

class Parent {
public:
    Parent();
    int f();
private:
    int value;
};

Parent::Parent() {
    value = 1;
}

int Parent::f() {
    return value;
}

class Child : public Parent {
public:
    Child();
    int g();
private:
    int sec_value;
};

Child::Child() {
    sec_value = 2;
}

int Child::g() {
    return sec_value;
}

int main() {
    Child child;
    child.f();
    child.g();
    
    return 0;
}