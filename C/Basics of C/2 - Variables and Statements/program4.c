// * if-else example

#include <stdio.h>

int main(void) {
    // ? a variable
    int v = 10;     // :: change it to test it

    if (v < 10) {       // ? if stament
        printf("v is less than 10.\n");
    }
    else if (v < 20){   // ? else if stament
        printf("v is not less than 10 but is less than 20.\n");
    }
    else {              // ? else stament
        printf("v is not les than 20.\n");
    }

    return 0;
}
