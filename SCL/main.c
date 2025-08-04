#include <stdio.h>
#include <stdlib.h>

#ifndef SCL_H
#define SCL_H

// First: define the struct with structural name SCL
struct SCL {
    int data;
    struct SCL *next;
};

// Them: define the type SCL so that to avaid every time to write "struct SCL" but just SCL
typedef struct SCL SCL;

// Create SCL
SCL* createSCL() {
    SCL *scl = malloc(sizeof(*scl));
    if (scl == NULL) {
        printf("createSCL malloc error\n");
        exit(EXIT_FAILURE);
    }
    return scl;
}

// Add en element to the SCL in First position
void addInFirstPostoSCL(SCL **pSCL) {
    SCL *scl = malloc(sizeof(*scl));
    if (scl == NULL) {
        printf("aaddInFirstPostoSCL malloc error\n");
        exit(EXIT_FAILURE);
    }
    scl->next = *pSCL;
    *pSCL = scl;
}

#endif // SCL_H

int main()
{
    // Declare and allocation of the first SCL
    SCL *scl = createSCL();
    scl->data = 10;
    scl->next = NULL;
    printf("First SCL data: %d\n", scl->data);
    addInFirstPostoSCL(&scl);
    scl->data = 20;
    printf("Second SCL data: %d %d\n", scl->data, scl->next->data);
    free(scl);
    /*SCL scl1;
    scl1.data = 12;
    scl1.next = NULL;
    printf("%d", scl1.data);*/
    return 0;
}
