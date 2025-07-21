// acca.c
#include "acca.h"

int piuuno(int start, int cicli) {
	if (start < start+cicli--) {
		//printf("start: %d - cicli: %d\n", start, cicli);
		start++;
		start = piuuno(start, cicli);
	}
    return start;
}

int p1i(int start, int cicli) {
	while (cicli-- > 0) {
		start++;
	}
	return start;
}
