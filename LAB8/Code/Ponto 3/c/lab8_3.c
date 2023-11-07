#include <stdio.h>

int polycalc(int a,int b,int c,int d,int e)
{
	return 5 * (a + b) * (c - 3 * d * e);
}

int main()
{
	int vec[5]={4, 2, 10, 1, 6};
	int f;
	
	f=polycalc(vec[0],vec[1],vec[2],vec[3],vec[4]);
	
	// Imprimir Resultados Calculados em Assembly e em C
	printf("Resultado Calculado na Funcao c: %d\n",f);
}
