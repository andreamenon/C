//main.c

#include <stdio.h>
//#include "acca.h"

int piuunob(int *start, int *cicli) {
	printf("%d %d %d\n", *start, *cicli, *start+*cicli);
	return *start+*cicli;
}

int piuunoa(int *start, int *cicli) {
	if (*start == *start+(*cicli)--) return *start;
	(*start)++;
	*start = piuunoa(start, cicli);
}

void incr(int *start, int *cicli) {
	if (*start == *start+(*cicli)--) return;
	*start = *start + 1;
	incr(start, cicli);
}

int main() {
	//int *start = malloc(sizeof(int));
	int *start;
	int *cicli;
	int finale;
	printf("start: "); scanf("%d", start);
	printf("cicli: "); scanf("%d", cicli);
	//finale = piuunob(start, cicli);
	//printf("%d\n", finale);
	//printf("dimint: %zu\n", sizeof(int));
	//finale = piuunoa(start, cicli);
	//printf("%d\n", finale);
	incr(start, cicli);
	printf("%d\n", *start);
	printf("dimint: %zu\n", sizeof(int));
	printf("dimintp: %zu\n", sizeof(void*));
	return 0;
}
