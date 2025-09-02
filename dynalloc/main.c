#include <stdio.h>
#include <stdlib.h>

unsigned long cont = 1;

void alloca() {
	int * ptr = malloc(sizeof(int)*100);
	printf("%lu\n",cont);
	cont++;
}

int main() {
	while (1) {
		alloca();
	}
	return 0;
}
