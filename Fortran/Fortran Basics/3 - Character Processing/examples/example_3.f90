program exmaple_3
    
    implicit none

    CHARACTER(len=10)   :: some = 'My name is'
    CHARACTER(len=6)    :: names
    CHARACTER(LEN=17)   :: complete

    names = 'Ernest'

    complete = some // ' ' // names

    write(*,*) complete ! -> My name is Ernest

end program exmaple_3
