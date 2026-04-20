// * trying the ternary operator

#include <stdio.h>

int main(void) {
    // * with conditionals
    // ? variables
    int a = 0;
    int b = 10;
    
    // ? conditionals
    if (b > 10) {
        a += 1;
    }
    else {
        a -= 1;
    }
    
    printf("Value of a: %d\n", a);  // -> Value of a: -1
    
    // * with ternary operator
    // ? variables
    int c = 0;
    int d = 10;
    
    // ? ternary operator
    // e.g.     condition ? true_value : false_value
    c += (b > 10) ? 1 : -1 ;

    printf("Value of c: %d\n", c);  // -> Value of a: -1

    return 0;
}
