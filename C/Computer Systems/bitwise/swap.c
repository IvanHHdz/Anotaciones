#include <stdio.h>

void swapper(int *x, int *y);
void reverse_array(int a[], int cnt);
void printarr(int arr[], int len);

int main(void) {
  int arr[] = {1, 2, 3, 4, 5, 6, 7};

  printarr(arr, 7);

  reverse_array(arr, 7);

  printarr(arr, 7);

  return 0;
}

void swapper(int *x, int *y) {
  *y = *x ^ *y;
  *x = *x ^ *y;
  *y = *x ^ *y;
}

void reverse_array(int a[], int cnt) {
  int *first, *last;
  for (first = a, last = a + cnt - 1; first < last; first++, last--) {
    swapper(first, last);
  }
}

void printarr(int arr[], int len) {
  printf("[");
  for (int i = 0; i < len; i++) {
    printf(" %d,", arr[i]);
  }
  printf("]\n");
}
