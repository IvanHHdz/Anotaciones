program example_5

    implicit none

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

end program example_5