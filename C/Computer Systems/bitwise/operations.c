#include <stdio.h>

void bitwise_not(int p);
void bitwise_and(int p, int q);
void bitwise_or(int p, int q);
void bitwise_xor(int p, int q);

int main(void) {
  int a = 0x4E;
  int b = 0xE1;

  bitwise_not(a);
  bitwise_not(b);

  bitwise_and(a, b);

  bitwise_or(a, b);

  bitwise_xor(a, b);

  return 0;
}

void bitwise_not(int p) {
  int r = ~p;
  printf("~%.2x = %.2x\n", p, r);
}

void bitwise_and(int p, int q) {
  int r = p & q;
  printf("%.2x & %.2x = %.2x\n", p, q, r);
}

void bitwise_or(int p, int q) {
  int r = p | q;
  printf("%.2x | %.2x = %.2x\n", p, q, r);
}

void bitwise_xor(int p, int q) {
  int r = p ^ q;
  printf("%.2x ^ %.2x = %.2x\n", p, q, r);
}
