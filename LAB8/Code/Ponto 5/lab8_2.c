#include <stdio.h>

#define SIZE 5

int max (int* tabela, int numValores);

int min (int* tabela, int numValores);

int main ()
{
	int vMax,vMin;

	int mark[SIZE] = { 19, 10, 8, 17, 9 };
	
	vMax = max (mark, SIZE);
	vMin = min (mark, SIZE);
	
	printf ("O valor maximo: %d\n",vMax);
	printf ("O valor minimo: %d\n",vMin);
	
	return 0;
}
