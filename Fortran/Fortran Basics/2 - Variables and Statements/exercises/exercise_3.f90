! * Write definitions of derived types, together with initial values, which represent
! * the following:
!   (a) a point with x, y and z coordinates.
!   (b) a time in hours, minutes and seconds.
!   (c) a date in day, month and year.
!   (d) a time comprised of the two types above.

program exercise_3

    implicit none
    
    ! a point with x, y and z coordinates
    type point
        real :: x, y, z
    end type point

    ! a time in hours, minutes and seconds
    type time
        integer :: hours, minutes, seconds
    end type time

    ! a date in day, month and year
    type date
        integer :: day, month, year
    end type date

    ! a time comprised of the two types above
    type absolute_time
        type(time) :: time
        type(date) :: date
    end type absolute_time

    type(point) :: a = point(1, 2, 3)
    type(time) :: b = time(16, 16, 56)
    type(date) :: c = date(5, 1, 2026)
    type(absolute_time) :: d

    d % time = b
    d % date = c

    write(*,*) "Point: ", a
    write(*,*) "Time: ", b
    write(*,*) "Date: ", c
    write(*,*) "Total Time: ", d

end program exercise_3