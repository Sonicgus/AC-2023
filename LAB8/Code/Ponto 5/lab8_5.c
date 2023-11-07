#include <stdio.h>

#define SIZE 5

int max (int* tabela, int numValores);

int min (int* tabela, int numValores);

int maxc(int* tabela, int numValores) {
	int maior = tabela[0];
	int i;
	for (i = 1; i < numValores; i++) {
		if (tabela[i] > maior)
			maior = tabela[i];
	}
	return maior;
}

int minc(int* tabela, int numValores) {
	int menor = tabela[0];
	int i;
	for (i = 1; i < numValores; i++) {
		if (tabela[i] < menor)
			menor = tabela[i];
	}
	return menor;
}

int main ()
{
	int vMax,vMin;

	int mark[SIZE] = { 19, 10, 8, 17, 9 };
	
	vMax = max (mark, SIZE);
	vMin = min (mark, SIZE);
	
	printf("O valor maximo em asm: %d\n",vMax);
	printf("O valor minimo em asm: %d\n",vMin);
	printf("O valor maximo em c: %d\n", maxc(mark, SIZE));
	printf("O valor minimo em c: %d\n", minc(mark, SIZE));
	
	return 0;
}
