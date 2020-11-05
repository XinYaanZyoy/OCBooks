program randomseed
! how to change the seed of RNGs
    implicit none

! vars for seeding
    integer :: i_seed, i, n=6
    integer, dimension(:), allocatable :: a_seed
    integer, dimension(1:8) :: dt_seed
! end of vars for seeding

    real :: r

! set up rand seed 
    call random_seed(size=i_seed)
    write(*,*) i_seed
    allocate(a_seed(1:i_seed))
    call random_seed(get=a_seed)
    call date_and_time(values=dt_seed)
    do i=1,8
        a_seed(i) = dt_seed(i)
    end do
    call random_seed(put=a_seed)
    deallocate(a_seed)
! end setup

    do i=1,n
        call random_number(r)
        write(6,*) 'random number is ', r
    end do
end program randomseed