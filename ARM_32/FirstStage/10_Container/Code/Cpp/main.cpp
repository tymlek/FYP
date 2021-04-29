/* C++ implementation */

#include <stdio.h>
#include <stdlib.h>

class int_container {
	public:
	int_container (const int* data_in, unsigned len_in) {
          data = new int[len_in];
		len = (data == 0) ? 0 : len_in;
		
		for (unsigned n = 0; n < len; ++n) {
			data[n] = data_in[n];
		}
	}
	
	~int_container() {
		delete [] data;
	}
	
	int operator[] (int index) const {
		return ((index >= 0 && ((unsigned)index) < len) ? data[index] : 0);
	}
	
	private:
	int* data;
	unsigned len;
};

int main(void)
{
	int my_data[4] = {0,1,2,3};
	int_container container(my_data,4);
	
	printf("%d", container[2]);
	
	while (1)
	{
		
	}
}