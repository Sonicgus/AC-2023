#include <stdio.h>

#define SIZE 5

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

	printf("O valor maximo em c: %d\n", maxc(mark, SIZE));
	printf("O valor minimo em c: %d\n", minc(mark, SIZE));
	
	return 0;
}
