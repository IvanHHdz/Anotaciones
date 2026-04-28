# Introduction


Explaning here a bit about what's at dis directory.

## Compilation Process

Here we have a bit about how the C compiler compilers the source file. 
First from source code to modified source code (from `.c` to  `.i`). 
Then to modified source code to assembly (from `.i` to `.s`). 
Then from assembly to object file (from `.s` to `.o`).
And finally, from object file to executable file (from `.o` to whatever your system execute, this case is nothing because we're in Linux).

The source file is the `.c` file you program using an editor, like VS Code or NVim.
The modified file is the same as the source code but after the imports. That's, e.g., each `#import` is replace with the corresponding code.
The assembly file needs no explanition. It's just the program but in their equivalente assembly code.
The object file is the binary code without the extern code. In this case the `printf()` function code.
And the executable needs no explanition.

One question maybe you are asking is why the object file doesn't have the `printf()` function, since the import was made before, at modified file.
It's because that step doesn't include the definition of the `printf()` function, it only contains the declaration.
So you link your code with the `printf.o` object file and then you can use the function in the executable.

Note, you can get these intermediable steps files using the C compiler `gcc`. Here is the code for each file.

``` shell
gcc -E program.c -o program.i
gcc -S program.i -o program.s
gcc -c program.s -o program.o
gcc program.o -o program
```

This example use a source code named `program.c`, but obviously you can change it.

