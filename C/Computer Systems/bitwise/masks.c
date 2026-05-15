#include <stdio.h>

unsigned int mask_A(unsigned int value);
unsigned int mask_B(unsigned int value);
unsigned int mask_C(unsigned int value);

int main(void) {
  unsigned int v = 0x87654321;

  printf("A: %.02x\n", mask_A(v));

  printf("B: %.02x\n", mask_B(v));

  printf("C: %.02x\n", mask_C(v));

  return 0;
}

unsigned int mask_A(unsigned int value) { return value & 0xFF; }

unsigned int mask_B(unsigned int value) { return ~value ^ 0xFF; }

unsigned int mask_C(unsigned int value) { return value | 0xFF; }
