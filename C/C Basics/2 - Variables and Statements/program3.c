// * Pre-and-Post Increment-and-Decrement

#include <stdio.h>

int main(void) {
    // ? original variable
    int i = 1;

    int j = 3 + i++;    // ? set j = 3 + i, then i++
    int k = 3 + ++i;    // ? set i++, then k = 3 + i

    printf("i = %d\nj = %d\nk = %d\n", i, j, k);
    // -> i = 1
    // -> j = 4
    // -> k = 6

    return 0;
}
