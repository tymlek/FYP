/* C style substitute for inheritance */

struct Parent {
	int value;
};

void ParConstructor(struct Parent* this) {
	this->value = 1;
}

int func_Par(struct Parent* this) {
	return this->value;
}

struct Child {
	struct Parent parent;
	int sec_value;
};

void ChildConstructor(struct Child* this) {
	ParConstructor(&this->parent);
	this->sec_value = 2;
}

int func_Child(struct Child* this) {
	return this->sec_value;
}

int main() {
	struct Child child;

	ChildConstructor(&child);
	func_Par((struct Parent*)&child);
	func_Child(&child);
	
	while (1) {
		
	}
}