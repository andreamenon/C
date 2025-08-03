#include <stdio.h>
#include <stdlib.h>

#ifndef SCL_H
#define SCL_H

// Prima definisci la struct con nome strutturale
struct SCL {
    int data;
    struct SCL *scl;
};

// Poi fai il typedef (fuori dalla definizione)
typedef struct SCL SCL;

#endif // SCL_H

int main()
{
    SCL *scl = NULL;
    return 0;
}
