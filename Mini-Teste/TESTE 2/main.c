#include <stdio.h>
#include "manipula_array.h"

void main()
{
	int table[10] = {7, 16, 12, 30, 5, 21, 40, 59, 7, 24};

	manipula_array(&table[0], 10);

	int i;
	for (i = 0; i < 10; i++)
	{
		printf("%d ,", table[i]);
	}
}