program Monte_Carlo_int
    implicit none
    integer :: n, i   
    real*8 :: a, b, h, f, x, p, crude_mc, err, ans, sigma, variance

    open(unit=7, file="Monte_Carlo_int.dat")

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

        write(*,*) "n=", n

        crude_mc = 0.0d0
        sigma = 0.0d0

        do i=1, n-1
            call random_number(p)
            x = a+b*p
            crude_mc = crude_mc + f(x)
            sigma = sigma + f(x)*f(x)
        end do

        h = (b-a)/real(n)
        crude_mc = crude_mc*h

        sigma = sigma/real(n)
        variance = sigma - crude_mc*crude_mc
        variance = real((b-a)*(sqrt(variance/real(n))))

        write(*,*) n, crude_mc, variance
        
        write(7,*) n, crude_mc, abs(ans-crude_mc)

        if (n .ge. 100000000) exit
    end do

    write(*,*) "results stored in Monte_Carlo_int.dat"
end program Monte_Carlo_int

real*8 function f(x)
    implicit none
    real*8 :: x
    f = exp(x)
end function f
