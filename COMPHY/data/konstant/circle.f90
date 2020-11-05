! Uniform Circular Motion
program circle
    implicit none
    ! declaration
    real :: x0, y0, R, x, y, vx, vy, t, t0, tf, dt
    real :: theta, omega
    real, parameter :: PI = 3.1415927
    ! interaction
    print *, "# omega="
    read *, omega
    print *, "# x0, y0, R ="
    read *, x0, y0, R
    print *, "# t0, tf, td ="
    read *, t0, tf, dt
    print *, "# omega=", omega
    print *, "# x0=", x0, "y0=", y0, "R=", R
    print *, "# t0=", t0, "tf=", tf, "dt=", dt
    ! init
    if(R .le. 0.0) stop "R<0"
    if(omega .le. 0.0) stop "omega<0"
    print *, "# T=",2.0*PI/omega
    open(unit=11, file="konstant/circle.dat")
    ! compute
    t = t0
    do while(t.le.tf)
        theta = omega*(t-t0)
        x = x0 + R*cos(theta)
        y = y0 + R*sin(theta)
        vx = -omega*R*sin(theta)
        vy = omega*R*cos(theta)
        write(11,*) t, x, y, vx, vy
        t = t+dt
    enddo
end program circle