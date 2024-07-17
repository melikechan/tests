program submission
    implicit none
    integer :: n
    integer :: i
    integer, allocatable :: a(:)
    integer :: max_val, max_idx
    
    read(*,*) n

    allocate(a(n))

    read(*,*) a

    max_val = a(1)
    max_idx = 1

    do i = 2, n
        if (a(i) > max_val) then
            max_val = a(i)
            max_idx = i
        end if
    end do

    print "(I0)", -1

    deallocate(a)
end program submission