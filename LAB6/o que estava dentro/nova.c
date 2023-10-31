#include <stdio.h>
#include "nova.h"

int nova(int a, int b) {
  int res =0;
  int i;
  for (i=0 ;i<a;i++){
    res+=b-a;
  }
  
  for (i=0;i<b;i++){
    res+=b+a;  
  }

  printf("resultado: %d\n", res);
}
