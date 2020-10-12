# LEC1: Hit or Miss Method

**Monte Carlo**:
- Trapezoidal
- Brute Force
- Hit-Miss

## Hit-Miss Method

the idea is to hit the given sqaure randomly, and then check if that point lies in the region we want the area of,
the ratio of points in the region to the whole sqaure times the the area of sqare would give the integral of the function which defines this region.

for 1D,
$$ I = \int_a^b f(x) dx $$

```
do i=1, N
    random = random_number(1)
    x = a + b*random
    y = f(a) + f(b)*random
    s = 0
    if y < exp(x)
    s++
end do

fraction = s/N
I = (b-a)*(f(b)-f(a))*fraction
```

[Monte_Carlo_int_trapezoidal](https://github.com/XinYaanZyoy/OCBooks/blob/master/COMPHY/data/Monte_Carlo_int_trapezoidal.f90)