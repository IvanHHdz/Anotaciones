program example_2  

    implicit none
    
    CHARACTER :: c              ! ? single character
    CHARACTER(LEN=13) :: name     ! ? string

    c = 'a'
    name = 'My name is...'

    write(*,*) c
    write(*,*) name

end program example_2  
