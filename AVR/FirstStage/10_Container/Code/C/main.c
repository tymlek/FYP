/* C approximation */

#include <stdio.h>
#include <stdlib.h>

typedef struct int_container int_container;
struct int_container {
	int* data;
	unsigned len;
};

void int_container_create (int_container* this, const int* data_in, unsigned len_in) {
	this->data = (int*)malloc(len_in * sizeof(int));
	this->len = (this->data == 0) ? 0 : len_in;
		
	for (unsigned n = 0; n < len_in; ++n) {
		this->data[n] = data_in[n];
	}
}
	
void int_container_destroy (int_container* this) {
	free(this->data);
}
	
int int_container_value (int_container* this, int index) {
	return ((index >= 0 && ((unsigned)index) < this->len) ? this->data[index] : 0);
}

int main(void)
{
	int my_data[4] = {0,1,2,3};
	int_container container;
	
	int_container_create(&container,my_data,4);
	
	printf("%d", int_container_value(&container,2));
	
	int_container_destroy(&container);
	
	while (1)
	{
		
	}
}