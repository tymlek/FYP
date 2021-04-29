/* C implementation */

#define N 10

int main() {
	int elements[N] = {0,1,2,3,4,5,6,7,8,9};
	int sum = 0;
	
	for (int i = 0; i < N; ++i) {
		sum += elements[i];
	}
	
	return 0;
}