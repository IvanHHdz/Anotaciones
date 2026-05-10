#include <stddef.h>
#include <stdio.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer pointer, size_t len);

int main(void) {

  double value_1 = 3.1415926;

  show_bytes((byte_pointer)&value_1, sizeof(double));

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
