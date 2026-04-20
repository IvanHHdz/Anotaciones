program example_1

    ! * conversion from mil/h to km/h

    implicit none

    real, parameter :: conversion = 1.60934
    real :: km, mil

    read(*,*) mil

    km = mil * conversion

    write(*,*) "Conversion: ", km

end program example_1
