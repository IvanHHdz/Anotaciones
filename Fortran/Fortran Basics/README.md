# Fortran Basics

## Introduction

Here an example of a `hello_world` program. Important note: fortran is not case sensitive. So you can use only lower cases if you want. However, use upper cases is a convention.

```fortran
PROGRAM hello_world
    WRITE(*,*) "Hello World!"
END PROGRAM hello_world
```

> Note: to compile:
>
> ``` shell
> gfortran ./file.f90 -o output_name
> ```

## Variables and Staments

There are 5 types of data:

- **Integers** likes `0`, `7`, `23`.
- **Reals** like `3.14`, `2.71`, `1.6`.
- **Complex** like `2 + 3i`.
- **Characters** like `'a'`
- **Logical** like `True`

In general, we declare variables with:

```fortran
type [,attributes...] :: variables_list_names[=initial_value]
```

For example:

```fortran
REAL :: pi = 3.1415926
INTEGER :: ID
```

There are constants with the attribute `PARAMETER`:

```fortran
REAL, PARAMETER :: pi = 3.1415926
```

And is recommended to always use:

```fortran
IMPLICIT NONE
```

At the begining of any program.

There are the classic operations:

- **Addition** with `+`
- **Subtraction** with `-`
- **Multiplication** with `*`
- **Division** with `/`
- **Exponentation** with `**`

You make comments with `!`.

You can also create your own derived data types.

```fortran
TYPE name
    component definition statements
    ...
END TYPE [name]

TYPE(name) [,attribute] :: variable list
```

## Character Processing

```fortran
CHARACTER :: c              ! ? single character
CHARACTER(LEN=13) :: name     ! ? string

c = 'a'
name = 'My name is...'
```

Concatenation is done with `//`:

```fortran
CHARACTER(len=10)   :: some = 'My name is'
CHARACTER(len=6)    :: names
CHARACTER(LEN=17)   :: complete

names = 'Ernest'

complete = some // ' ' // names

write(*,*) complete ! -> My name is Ernest
```

Substrings:

```fortran
CHARACTER(len=22)   :: value = 'To define is to limit.'

write(*,*) value(17:21) ! -> limit
```

Useful functions:

```fortran
CHARACTER(len=10) :: string = 'Telemachus'

! ? return the length of the string
write(*,*) 'len(string): ', len(string)
! ->    len(string): 10

! ? return the location of a given substring
write(*,*) 'index(string): ', index(string, 'lema')
! ->    index(string): 3

! ? converts an integer into a character (ANSII)
write(*,*) 'char(num): ', char(68), char(111), char(111), char(109)
! ->    char(num): Doom

! ? converts an character into a integer (ANSII)
write(*,*) 'ichar(character): ', ichar('L')
! ->    ichar(character): 76

! ? returns the string with the trailing blanks removed
write(*,*) 'trim(string): ', trim('1984                                      '), '.'
! ->    trim(string): 1984.
```
