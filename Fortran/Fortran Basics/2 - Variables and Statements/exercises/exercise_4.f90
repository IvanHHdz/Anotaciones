! * Write a program which will read in two real numbers representing the length
! * and breadth of a rectangle, and will print out the area calculated as length times
! * breadth. (Use a derived type to represent the rectangle and its area.)

program exercise_4

    implicit none
    
    type rectangle
        real :: length, breadth, area
    end type rectangle

    type(rectangle) :: my_rectangle
    real :: temp

    write(*,*) "Lenght of the rectangle: "
    read(*,*) temp
    my_rectangle%length = temp

    write(*,*) "Breadth of the rectangle: "
    read(*,*) temp
    my_rectangle%breadth = temp

    my_rectangle%area = my_rectangle%length * my_rectangle%breadth

    write(*,*) "My rectangle's area is: ", my_rectangle%area

end program exercise_4
