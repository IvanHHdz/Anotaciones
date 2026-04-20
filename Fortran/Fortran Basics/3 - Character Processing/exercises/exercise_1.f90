! * Given the following variable declaration and initialization:
! * CHARACTER(len=27) :: title=‘An Introduction to Fortran.’

program exercise_1

    implicit none
    CHARACTER(len=27) :: title='An Introduction to Fortran.'

    ! * define substrings which would specify the character literals below?
    ! *     (a) to
    ! *     (b) Intro
    ! *     (c) Fortran.
    write(*,*) title(17:18)
    write(*,*) title(4:8)
    write(*,*) title(20:26)

    ! * write a program using intrinsic functions, which would:
    ! *     (a) find the location of the string duct
    ! *     (b) find the length of the string
    ! *     (c) extract and concatenate substrings to produce the string Fortran, An Introduction to.
    write(*,*) index(title, 'duct')
    write(*,*) len(title)
    write(*,*) title(index(title, 'Fortran'):index(title, 'Fortran') + len('Fortran') - 1) // ', ' // title(index(title, 'An Introduction to '): index(title, 'An Introduction to ') + len('An Introduction to') - 1) // '.'

end program exercise_1