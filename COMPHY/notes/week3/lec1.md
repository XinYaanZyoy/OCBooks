# LEC1: Hit or Miss Method

## Monte Carlo:
- Trapezoidal
- Brute Force
- Hit-Miss

## Hit-Miss Method

the idea is to hit the given sqaure randomly, and then check if that point lies in the region we want the area of,
the ratio of points in the region to the whole sqaure times the the area of sqare would give the integral of the function which defines this region.

for 1D,
$$ I = \int_a^b f(x) dx $$

```
s = 0
do i=1, N
    random_number(random1)
    x = a + b*random1
    random_number(random2)
    y = f(b)*random2
    if y < f(x)
    s++
end do

fraction = s/N
I = (b-a)*f(b)*fraction
```

for integartion of exp(x) from 0 to 3,
[riemann_int_trapezoidal](https://github.com/XinYaanZyoy/OCBooks/blob/master/COMPHY/data/riemann_int_trapezoidal.f90)
[Monte_Carlo_int](https://github.com/XinYaanZyoy/OCBooks/blob/master/COMPHY/data/Monte_Carlo_int_trapezoidal.f90)
[Monte_Carlo_int_Hit_Miss](https://github.com/XinYaanZyoy/OCBooks/blob/master/COMPHY/data/Monte_Carlo_int_Hit_Miss.f90)