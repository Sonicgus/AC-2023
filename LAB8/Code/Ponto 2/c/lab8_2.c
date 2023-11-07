#include <stdio.h>

int max(int n1, int n2, int n3, int n4) {
	int maior=n1;

	if (n2 > maior)
		maior = n2;
	if (n3 > maior)
		maior = n3;
	if (n4 > maior)
		maior = n4;
	return maior;
}

int min(int n1, int n2, int n3, int n4) {
	int menor=n1;
	if (n2 < menor)
		menor = n2;
	if (n3 < menor)
		menor = n3;
	if (n4 < menor)
		menor = n4;
	return menor;
}

int main ()
{
	int a1, a2, a3, a4;
	int vMax,vMin;
	
	printf ("Introduza o primeiro valor:\n");
	scanf ("%d", &a1);
	printf ("Introduza o segundo valor:\n");
	scanf ("%d", &a2);
	printf ("Introduza o terceiro valor:\n");
	scanf ("%d", &a3);
	printf ("Introduza o quarto valor:\n");
	scanf ("%d", &a4);
	
	vMax = max (a1,a2,a3,a4);
	vMin = min (a1,a2,a3,a4);
	
	printf ("O valor maximo: %d\n",vMax);
	printf ("O valor minimo: %d\n",vMin);
	
	return 0;
}
