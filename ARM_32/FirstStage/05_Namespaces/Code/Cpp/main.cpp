/* C++ implementation */

namespace ns1 {
	void func_f() {

	}

	void func_g () {
		func_f();           // Calls ns1::func_f() implicitly
	}
}

namespace ns2 {
	void func_f() {

	}

	void func_g() {
		func_f();           // Calls ns2::func_f() implicitly
	}
}

int main() {
	ns1::func_g();
	ns2::func_g();
	
	while (1) {
		
	}
}