#include "stdio.h"

void print(int value) { printf("The value is: %d\n", value); }

int main(void) {
  int arr[] = {7, 17, 23, 43, 41, 73, 92, 101};

  int *ptr = arr;

  // equivalence
  print(*ptr);

  // addition
  print(*(ptr + 2));

  // change of position in addition
  ptr++;
  print(*ptr);

  // substraction
  print(*(ptr - 1));

  // change of position in substraction
  ptr--;
  print(*ptr);

  return 0;
}
