template<typename T>
class A {
public:
    A(T init);
    T f();
private:
    T value;
};

template<typename T>
A<T>::A(T init) {
    value = init;
}

template<typename T>
T A<T>::f() {
    return value;
}

int main() {
    A<int> a(1);
    a.f();
    
    return 0;
}