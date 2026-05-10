#include <stddef.h>
#include <stdio.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer pointer, size_t len);

int main(void) {

  int value_1 = 23;

  show_bytes((byte_pointer)&value_1, sizeof(int));

  double value_2 = 1.618033989;

  show_bytes((byte_pointer)&value_2, sizeof(double));

  return 0;
}

void show_bytes(byte_pointer pointer, size_t len) {
  for (int i = 0; i < len; i++) {
    printf("%.2x ",
           *(pointer + i)); // notice that you can also use the array notation
                            // instead of using pointer arithmetic
  }
  printf("\n");
}
