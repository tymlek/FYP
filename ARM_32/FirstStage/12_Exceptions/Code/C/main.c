/* C approximation of excepion handling */

#include <stdio.h>
#include <setjmp.h>

jmp_buf ConstCharStarException;
const char* ConstCharStarExceptionValue;

int factorial(int n) {
	if (n < 0) {
		ConstCharStarExceptionValue = "Negative argument to factorial";
		longjmp(ConstCharStarException, 0);
	}

	if (n > 0) {
		return (n * factorial(n - 1));
	}

	return 1;
}

int main() {

	if (setjmp(ConstCharStarException) == 0) {
		int n = factorial(10);
		printf("factorial(10) = %d",n);
	}
	else {
		printf("factorial threw exception: %s\n",ConstCharStarExceptionValue);
	}

	while (1) {
		
	}
}