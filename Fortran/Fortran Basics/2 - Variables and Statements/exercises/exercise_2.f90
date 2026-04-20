! * Given the following variable declarations and assignments evaluate the subse-
! * quent expressions and state the value and type of each result. Check your
! * results by writing a program to write out the results of the expressions. Finally,
! * insert brackets to clarify the meaning of these expressions according to operator
! * precedence.
! 
! REAL :: x=10.0 y=0.01, z=0.5
! INTEGER :: i=10, j=25, k=3
! i + j + k * i
! z * x / 10 + k
! z * k + z * j + z * i
! i * y - k / x + j
! x / i / z

program exercise_2
    
    REAL :: x=10.0, y=0.01, z=0.5
    INTEGER :: i=10, j=25, k=3

    write(*,*) i + j + (k * i)              ! -> 65
    write(*,*) ((z * x) / 10) + k           ! -> 3.5
    write(*,*) (z * k) + (z * j) + (z * i)  ! -> 19
    write(*,*) ((i * y) - (k / x)) + j      ! -> 24.8
    write(*,*) (x / i) / z                  ! -> 2

end program exercise_2