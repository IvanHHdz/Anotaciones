# Variables and Statements

## Variables

Some basic rules to name variables:

- You can’t start a variable with a digit 0-9.
- You can’t start a variable name with two underscores.
- You can’t start a variable name with an underscore followed by a capital A-Z.

And the most basic types are:

| Type              | Example       | C type    |
|-------------------|---------------|-----------|
| Integer           | `23`          | `int`     |
| Floating point    | `2.71`        | `float`   |
| Character         | `'a'`         | `char`    |
| String            | `"Tupamaro"`  | `char *`  |

You can declare a variable with:

```C
// ? just declare the variable
int n;

// ? declare and then get to the variable a value
int r;
r = 23;

// ? declare and initialized the variable
int i = 1;
```

Here an example using and printing some variables:

```C
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
```

Important: originally C has no boolean type. Until C23. Before it, boolean types was used from a library or just using `0` for false and everithing else as true.

But now there is a boolean type:

```C
bool boolean1 = true;
bool boolean0 = false;
```

## Operators and Expressions

### Arithmetic

Normal arithmetic operations. Examples here asumming `i = 3`.

| Operation         | Sign  | Example   | Output    |
|-------------------|-------|-----------|-----------|
| Addition          | `+`   | `i + 3`   | `6`       |
| Subtraction       | `-`   | `i - 2`   | `1`       |
| Multiplication    | `*`   | `i * 4`   | `12`      |
| Division          | `/`   | `i / 3`   | `1`       |
| Modulo            | `%`   | `i % 2`   | `1`       |

There is a shorthand for operations like:

```C
// ? both do the same
i = i + 1;
i += 1;
```

### Ternary Operator

Short way to for a `if-else` stament. Here an example:

```C
// * trying the ternary operator

#include <stdio.h>

int main(void)
{
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
```

### Pre-and-Post Increment-and-Decrement

The classic:

```C
i ++;
i --;
// * equivalent to
i += 1;
i -= 1;
```

Notice that also works for:

```C
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
```

And this is mostly used in `for` loops.

### The Comma Operator

Mostly uncommon but still:

```C
// ? one single expression
x = 1, y = 2;
// ? two expressions
x = 1; y =2;
```

The two above do the same.

But is still useful in some contexts. Like `for` loops.

### Conditional Operators

For conditionals:

| Operator  | Example   | Meaning                                       |
|-----------|-----------|-----------------------------------------------|
| `==`      | `a == b`  | True if `a` is equivalent to `b`              |
| `!=`      | `a != b`  | True if `a` is not equivalent to `b`          |
| `<`       | `a < b`   | True if `a` is less than `b`                  |
| `>`       | `a > b`   | True if `a` is greater than `b`               |
| `<=`      | `a <= b`  | True if `a` is less than or equal to `b`      |
| `>=`      | `a >= b`  | True if `a` is greater than or equal to `b`   |

### Boolean Operators

Aka logical operators:

| Operator  | Boolean or logical meaning    |
|-----------|-------------------------------|
| `&&`      | AND                           |
| `\|\|`    | OR                            |
| `!`       | NOT                           |

## Flow Control

### The `if-else` statement

Already seen with the ternary operator. But anyways, here an example:

```C
// * if-else example

#include <stdio.h>

int main(void) {
    // ? a variable
    int v = 10;     // :: change it to test it

    if (v < 10) {       // ? if stament
        printf("v is less than 10.");
    }
    else if (v < 20){   // ? else if stament
        printf("v is not less than 10 but is less than 20");
    }
    else {              // ? else stament
        printf("v is not les than 20.");
    }

    return 0;
}
```

### The `while` statement

Same as always. Loop of staments under a condition. Here an example:

```C
// * while example
// * printing the fibonacci serie

#include <stdio.h>

int main(void) {
    // ? a variable
    int v = 0;  // ? n - 1 value
    int p = 1;  // ? n value

    while (p <= 100) {      // ? stop at la last value less or equal to 100.
        printf("%d\n", p);  // ? print the value
        int t = p;
        p += v;
        v = t;
    }
    

    return 0;
}
```

### The `do-while` statement

Same as `while`, but first execute, then check the condition.

```C
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
```

### The `for` statement

Classic `for`. Example:

```C
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
```

### The `switch` Statement

Works like several `if-else`. But only cheking if some variable has some specific value. Example:

```C
