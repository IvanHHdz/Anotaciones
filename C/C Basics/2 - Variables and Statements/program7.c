// * for example

#include <stdio.h>

int main(void) {
    // :: the basic structure is 
    // :: for (initialize things; loop if this is true; do this after each loop)

    // ? normal example
    printf("An example: \n");       
    for (int i = 1; i <= 10; i++) { 
        printf("7 x %d = %d\n", i, i * 7);
    }

    // ? example using two variables
    printf("Other example: \n");    
    for (int i = 0, j = 0; i <= 10; i++, j--) {
        printf("(%d, %d)\n", i, j);
    }
    
    // ? example using three variables and a not-simple step
    printf("Other example (fibonacci serie :O): \n");
    for (int a = 0, b = 1, c = 1; b <= 100; c = b, b += a, a = c) {
        printf("%d\n", b);
    }

    return 0;
}
