# Hello world

Here the program explained:

```C
// * Hello world program 

// ? tells to the preprocessor to insert something
// ? in this case, import the standart I/O library stdio.h
#include <stdio.h>

// ? main() function, no explain needed
int main(void) {
    printf("Hello, World!\n");  // ? this call the printf function to print
}
```

Something interesting is that, if you're on a Unix system (like Fedora) you can use this command to get some documentation about the standard library. For example, this is for documentation about the `printf()` function:

```shell
man 3 printf
```

Now, you compile it with:

```C
gcc -o program_name file_name.c
```
