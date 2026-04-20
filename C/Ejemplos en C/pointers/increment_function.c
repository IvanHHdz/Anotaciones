#include "stdio.h"

void increment(int *p);

int main(void) {
  int v = 1;

  increment(&v);

  printf("The value of the variable is: %d\n", v);

  return 0;
}

void increment(int *p) { *p += 1; }
