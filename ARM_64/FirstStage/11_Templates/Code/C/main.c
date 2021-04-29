/* C style approximation of template */

#define A(T)                                                \
    struct A_##T {                                          \
        T value;                                            \
    };                                                      \
                                                            \
    void AConstructor_##T(struct A_##T* this, T init) {     \
        (this)->value = init;                               \
    }                                                       \
                                                            \
    T A_f_##T(struct A_##T* this) {                         \
        return (this)->value;                               \
    }

A(int)

int main() {
    struct A_int a;
    AConstructor_int(&a,1);
    A_f_int(&a);
    
    return 0;
}