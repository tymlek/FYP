/* C approximation */

void ns1_func_f() {

}

void ns1_func_g () {
	ns1_func_f();
}

void ns2_func_f() {

}

void ns2_func_g() {
	ns2_func_f();
}

int main() {
	ns1_func_g();
	ns2_func_g();
	
	while (1) {
		
	}
}