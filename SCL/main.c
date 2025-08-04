#include <stdio.h>
#include <stdlib.h>

#ifndef SLL_H
#define SLL_H
// Singly Linked List

// Define the structure of the information within a node of the singly linked list
struct SLLInfo {
    // We consider the simplest case: just one int declaration
    int data;
};
// Define the relative data type
typedef struct SLLInfo SLLInfoType;

// Define the structure of the nodes of the singly linked list
struct SLLNode {
    SLLInfoType info;
    struct SLLNode *next;
};
// Define the relative data type
typedef struct SLLNode SLLNodeType;

// Define the singly linked list type as a pointer to the structure that defines the nodes
typedef SLLNodeType * SLLType;

// Create a SLL of 1 node
SLLType SLLCreate() {
    SLLType sll = malloc(sizeof(SLLNodeType));
    if (sll == NULL) {
        printf("SLLCreate malloc error\n");
        exit(EXIT_FAILURE);
    }
    return sll;
}

// Add en element to the SCL in First position
/*void addInFirstPostoSCL(SCL **pSCL) {
    SCL *scl = malloc(sizeof(*scl));
    if (scl == NULL) {
        printf("aaddInFirstPostoSCL malloc error\n");
        exit(EXIT_FAILURE);
    }
    scl->next = *pSCL;
    *pSCL = scl;
}*/

#endif // SLL_H

int main()
{

    // Declaration and allocation of a SLL
    SLLType sll = SLLCreate();

    // Initialize the content of the unique node
    sll->info.data = 10;
    sll->next = NULL;
    printf("First SLL data: %d\n", sll->info.data);
    //addInFirstPostoSCL(&scl);
    //scl->data = 20;
    //printf("Second SCL data: %d %d\n", scl->data, scl->next->data);
    free(sll);
    /*SCL scl1;
    scl1.data = 12;
    scl1.next = NULL;
    printf("%d", scl1.data);*/
    return 0;
}
