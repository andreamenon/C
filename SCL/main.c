#include <stdio.h>
#include <stdlib.h>

#ifndef SCL_H
#define SCL_H

// Prima definisci la struct con nome strutturale
struct SCL {
    int data;
    struct SCL *next;
};

// Poi fai il typedef (fuori dalla definizione)
typedef struct SCL SCL;

#endif // SCL_H

int main()
{
    SCL *scl = malloc(sizeof(*scl));
    scl->data = 10;
    scl->next = NULL;
    printf("%d", scl->data);
    free(scl);
    return 0;
}
