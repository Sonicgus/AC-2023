#include <stdio.h>
#include "soma.h"
#include "adicional.h"
#include "nova.h"

int main(){
  int a,b,c;

  printf("Enter the first number: ");
  scanf("%d",&a);
  printf("Enter the second number: ");
  scanf("%d",&b);

  adicional(soma(a,b));
  nova(a,b);
}
