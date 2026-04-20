program example_2

    ! * derived data type "coordinate"

    implicit none
    
    type coordinate
        real :: x, y, z
    end type coordinate

    type(coordinate) :: some_coordinates

    some_coordinates%x = 3.14
    some_coordinates%y = 2.71
    some_coordinates%z = -1.6

    write(*,*) "Coordinates: ",some_coordinates


end program example_2
