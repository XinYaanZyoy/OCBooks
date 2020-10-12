program Monte_Carlo_int_Hit_Miss
    implicit none
    integer :: i, n, s
    real*8 :: p1, p2, x, y, f, a, b, frac, err, ans, result

    open(unit=1, file="Monte_Carlo_int_Hit_Miss.dat")

    write(*,*) "n:"
    read(*,*) n

    write(*,*) "a: "
    read(*,*) a

    write(*,*) "b: "
    read(*,*) b

    ans = exp(3.0d0)-1

    write(*,*) "calculating..."

    do  
        n = n*10
        s = 0

        write(*,*) "n=", n

        do i = 1, n
            call random_number(p1)
            x = a+b*p1
            call random_number(p2)
            y = f(b)*p2
            if (y .lt. f(x)) s=s+1
        end do

        write(*,*) "s=", s

        frac = real(s)/n

        result = (b-a)*f(b)*frac

        err = (ans - result)

        write(*,*) n, frac, result, err

        write(1,*) n, frac, result, err

        if (n .ge. 100000000) exit
    end do

    write(*,*) "results stored in Monte_Carlo_int_Hit_Miss.dat"
end program Monte_Carlo_int_Hit_Miss

real*8 function f(x)
    implicit none
    real*8 :: x
    f = exp(x)
end function