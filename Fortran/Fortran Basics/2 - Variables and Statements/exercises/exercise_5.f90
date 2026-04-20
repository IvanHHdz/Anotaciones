! * Write a program which will read in five integers and will output the sum and
! * average of the numbers.

program exercise_5

    implicit none
    
    integer :: v1, v2, v3, v4, v5
    real :: sum, ave

    write(*,*) "Write all the numbers: "
    read(*,*) v1, v2, v3, v4, v5

    sum = v1 + v2 + v3 + v4 + v5
    ave = sum / 5

    write(*,*) "The sum is: ", sum, "The average is: ", ave

end program exercise_5