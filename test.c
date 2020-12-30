#include <stdio.h>
#include "var.h"
#include "max.h"
#include "min.h"
int main()
{
        int n =10;
        int t[]={4,9,10,11,12,15,12,9,0,30};
        float varia;
	int val_max;
	int val_min; 
        variance(t,n,&varia);
	max(t,n,&val_max); 
	min(t,n,&val_min);
	printf("La valeur maximale présente dans le tableau est : %d", val_max) ;
	printf("La valeur minimale présente dans le tableau est : %d", val_min) ;
	printf("La variance du tableau est : %f", varia) ;
	return 0;
}


