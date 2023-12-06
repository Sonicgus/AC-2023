#include <stdio.h>
#include "codifica_string.h"

void main()
{
	char string[28] = "Arquitetura de Computadores";

	codifica_string(string);

	printf("%s\n", string);
}