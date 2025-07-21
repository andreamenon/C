#include <stdio.h>
#include <stdlib.h>

void Patata(int c) {
    int a[2000000+c];
    printf("%d\n", 2000000+c);
}

int main()
{
    int c = 0;
    while(-1) {
        Patata(c);
        c++;
    }
    printf("Int size = %lu\n", sizeof(int));
    return 0;
}
