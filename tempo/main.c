//main.c

#include <stdio.h>
#include <string.h>
#include "acca.h"

int main() {
	int start, cicli, finale;
	printf("start: "); scanf("%d", &start);
	printf("cicli: "); scanf("%d", &cicli);
	//finale = piuuno(start, cicli);
	//printf("%d\n", finale);
	finale = p1i(start, cicli);
	printf("%d\n", finale);
	printf("dimint: %zu\n", sizeof(int));
	char nome[10];
	strcpy(nome, "Andrea123");
	printf("%s\n", nome);
	return 0;
}
