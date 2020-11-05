program riemann_int_trapezoidal
    implicit none
    integer :: n, i   
    real*8 :: a, b, h, f, x, trap_sum, err, ans

    open(unit=7, file="riemann_int_trapezoidal.dat")

    write(*,*) "n: "
    read(*,*) n

    write(*,*) "a: "
    read(*,*) a

    write(*,*) "b: "
    read(*,*) b

    ans = exp(3.0d0)-1

    write(*,*) "calculating..."

    do
        n = n*10
        h = (b-a)/real(n)

        write(*,*) "n=", n

        trap_sum = 0.0d0

        do i=1, n-1
            x = a+h*i
            trap_sum = trap_sum + f(x)
        end do

        trap_sum = (2*trap_sum+f(a)+f(b))*h/2

        err = (ans-trap_sum)

        write(*,*) n, trap_sum, err
        
        write(7,*) n, trap_sum, err

        if (n .ge. 100000000) exit
    end do

    write(*,*) "results stored in Monte_Carlo_int_trapezoidal.dat"
end program riemann_int_trapezoidal

real*8 function f(x)
    implicit none
    real*8 :: x
    f = exp(x)
end function f
