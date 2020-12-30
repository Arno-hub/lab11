#include <stdio.h>
#include "var.h"

void variance(int t[], int n, float *var)
{
        float M;
	float V;
	float p;
	int i;
	M=0;
	p=0;
	V=0;
	for ( i=0; i<n;i++){
                p=p+t[i];
                }
	M=p/n;
        for ( i=0; i<n;i++){
                V = (t[i]-M)*(t[i]-M) + V; 
                }
	*var = V/n;
      
}                                     
