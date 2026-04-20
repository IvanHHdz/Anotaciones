! * Write a program which declares variables to hold the following data:
!   (a) an integer set to zero.
!   (b) an integer set to minus one.
!   (c) 64.0
!   (d) -1.56x1012 (this should be written as -1.56E12)

program exercise_1

    implicit none
    
    integer :: a = 0
    integer :: b = -1
    real :: c = 64.0
    real :: d = -1.56e12

    write(*,*) "a: ", a
    write(*,*) "b: ", b
    write(*,*) "c: ", c
    write(*,*) "d: ", d

end program exercise_1
