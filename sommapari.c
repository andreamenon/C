#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int a[12] = {1,2,3,4,5,6,7,8,9,20,31,42};
int risultato = 0;

struct nodo {
    int valore;
    struct nodo * next;
};

typedef struct nodo anodo;

void AggiungiNodo (struct nodo nodo, int valore) {
    struct nodo nnodo;
    nnodo.valore = valore;
    nnodo.next = &nodo;
    nodo.next = &nnodo;
}

void SommaPari(struct nodo * nodo, int * risultato) {
    if (nodo->valore%2==0) *risultato = *risultato + nodo->valore;
    if (nodo->next != NULL) SommaPari(nodo->next, risultato);
}

int main(void) {
	int w[] = {100,1};
	long *l = (long*)&w;
	printf("i to l: %ld\n",*l);
	long ll = 4294967396;
	int *ww = (int*)&ll;
	printf("l to i: %d %d\n",*ww,*(ww+1));
    anodo an[12];
    for (int i=0; i<12; i++) {
        an[i].valore = a[i];
        an[i].next = NULL;
        if (i!=0) an[i-1].next = &an[i];
    }
    SommaPari(&an[0], &risultato);
    printf("La somma da lista è: %d\n", risultato);
    risultato = 0;
    printf("La somma da array è: ");
    for (int i=0; i<12; i++) {
        if (a[i]%2==0) {
            risultato = risultato + a[i];
        }
    }
    printf("%d\n",risultato);
    return 0;
}
