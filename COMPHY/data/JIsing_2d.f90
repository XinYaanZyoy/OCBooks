program JIsing
    implicit none
    
    integer :: i, j, L, p, a, b, c, d, niter, mm, nn, N, time
    real :: r, q, E, M, mag, Ei, Ef, dE, u
    real :: T=2.0, J_ising=1.0
    integer, dimension(:,:), allocatable :: spin
    integer :: seed
    character(len=30) :: charac_a, charac_b

    seed = 44859
    charac_b = 'store_config'

    write(*,*) 'L='
    read(*,*) L
    write(*,*) 'niter='
    read(*,*) niter

    allocate(spin(L,L))
    E=0.0d0
    M=0.0d0
    N=L*L

    call random_seed

    open(71, file="initial_ising.dat")
    p=0
    do i = 1, L
        do j = 1, L
                ! spin(j,i) = -1

            call random_number(r)
            if(r<0.5) then 
                spin(j,i) = -1
            else
                spin(j,i) = +1
            end if
            write(71, fmt='(4g10.8)') float(i), float(j), float(p), float(spin(j,i))
        end do
    end do
    close(71)

    do i = 1, L
        do j = 1, L
            a=i+1; b=i-1; c=j+1; d=j-1

            if(i==L) a=1
            if(i==1) b=L
            if(j==1) d=L
            if(j==L) d=1

            M=M+spin(i,j)
            E=E-J_ising*float((spin(j,i))*(spin(a,j)+spin(b,j)+spin(i,c)+spin(i,d)))
        end do
    end do

    Mag = M/float(N)
    E = E*0.5d0

    write(*,*) 'E_initial = ', E
    write(*,*) 'E/spin = ', E/float(N)
    write(*,*) 'M_initial = ', M
    write(*,*) 'M/spin = ', Mag

    open(10, file="ising_T2_L40_init_ran.dat")
    do time = 1, niter
        do mm = 1, L
            do nn = 1, L
                call random_number(r); i=int(r*float(L))+1                
                call random_number(r); j=int(r*float(L))+1     
                
                a=i+1; b=i-1; c=j+1; d=j-1

                if(i==L) a=1
                if(i==1) b=L
                if(j==1) d=L
                if(j==L) d=1

                Ei = -J_ising*float((spin(i,j))*(spin(a,j)+spin(b,j)+spin(i,c)+spin(i,d)))
                spin(i,j) = -spin(i,j)
                Ef = -J_ising*float((spin(i,j))*(spin(a,j)+spin(b,j)+spin(i,c)+spin(i,d)))
                dE=Ef-Ei

                if(dE.le.0.0d0)then
                    E=E+dE
                    M=M+(2.0d0*float(spin(i,j)))
                else
                    u = exp(-dE/T)
                    call random_number(q)
                    if(q<u)then
                        E=E+dE
                        M=M+(2.0d0*float(spin(i,j)))
                    else
                        spin(i,j) = -spin(i,j)
                    end if
                end if
            end do
        end do
        write(10,*) time, M/float(N), E/float(N)
    end do
    close(10)
end program JIsing