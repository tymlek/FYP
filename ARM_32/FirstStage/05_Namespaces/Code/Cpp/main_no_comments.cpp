namespace ns1 {
	void func_f() {

	}

	void func_g () {
		func_f();
	}
}

namespace ns2 {
	void func_f() {

	}

	void func_g() {
		func_f();
	}
}

int main() {
	ns1::func_g();
	ns2::func_g();
	
	while (1) {
		
	}
}