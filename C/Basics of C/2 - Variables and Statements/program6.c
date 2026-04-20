// * do-while example
// * printing the fibonacci serie

#include <stdio.h>

int main(void) {
    // ? a variable
    int v = 0;  // ? n - 1 value
    int p = 1;  // ? n value

    do {      // ? stop at la last value less or equal to 100.
        printf("%d\n", p);  // ? print the value
        int t = p;
        p += v;
        v = t;
    } while (p <= 100);
    

    return 0;
}
