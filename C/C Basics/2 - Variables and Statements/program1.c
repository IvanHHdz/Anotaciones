// * printing variables

#include <stdio.h>

int main(void) {
    // ? declare and initialized the variables
    int value = 23;
    float pi = 3.14;
    char* song = "Homografobia";

    // ? print it
    // :: notice that every one must to especify what is going to be printed
    // e.g.     'd' for integer
    // e.g.     'f' for floats
    // e.g.     's' for strings
    // :: then pass them as parameters
    printf("integer: %d\nfloat: %f\nstring: %s\n", value, pi, song);
    // ->   integer: 23
    // ->   float: 3.140000
    // ->   string: Homografobia
}