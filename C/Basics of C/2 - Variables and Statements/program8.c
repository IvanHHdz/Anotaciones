// * switch example

#include <stdio.h>

int main(void) {
    // ? a variable
    int v = 1;

    switch (v) {    // ? gonna check the value of v
    case 0:         // ? check if is 0
        printf("So, v is 0\n");
        break;      // ! breaks are important!
                    // ! if you don't use it the following lines will be executed until the end of the switch stament or some break line
    case 1:         // ? check if is 1
        printf("So, v is 1\n");
        break;      // e.g.     if I remove this break, and the value of v is 1
                    // e.g.     then will say that v is 1
                    // e.g.     but also that v is 2
                    // e.g.     that doesn't make sence
                    // :: however, sometimes it makes
    case 2:         // ? check if is 2
        printf("So, v is 2\n");
        break;
    
    default:        // ? this is if v is none of above
        printf("What's v?");
        break;
    }

    return 0;
}
