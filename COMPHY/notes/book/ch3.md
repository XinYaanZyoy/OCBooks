# Integration of ODEs


## Euler’s Method

for the inital val prob
$$ \dot{y} = f(x,y) \\ y(x_0) = y_0 $$

the partitional location
$$ x_n = x_0 + nh $$

at the location $x_n$ the grad is as per the prob
$$ \dot{y_n} = f(x_n, y_n) $$

by approximating the curve between locations $x_n$ and $x_{n+1}$ to be a straight line
$$ y_{n+1} = y_n + h\dot{y_n} \\ y_{n+1} = y_n + hf(x_n, y_n) $$

therefore from initial condition we reach to the final condition and obtain an approximate cure.


## Numerical Errors

1. Trunction Error
2. Round-off Error

Trunction Error is caused my eliminating the higher order terms of taylor expansion.

$$ y(x_n + h) = y(x_n) + hf(x_n, y_n) + \frac{h^2}{2}\ddot{y(x_n)} + \cdots $$
$$ \therefore y_{n+1} = y_n + hf(x_n, y_n) + O(h^2) $$

therefore every step of Euler method incurs Error of $O(h^2)$, for an integral over unity domain the number of steps are $n \sim O(h^{-1})$, therefore total error is $O(h^2)O(h^{-1}) \sim O(h)$.

since this is first order method and trunction error is of order 2 per step, in general the nth order method will have n+1 th truncation error per step.

computer stores floating-point numbers in system defined size, therefore it can store only to a fixed smallest floating point number. therfore every floating-point operation incurs round-off error of $O(\eta)$, because there are $n \sim O(h^{-1})$ steps, therefore there is error of $O(\frac{\eta}{h})$ for an integral over unity domain.

the total error therefore
$$ \epsilon \sim \frac{\eta}{h}+h  $$

for large h, the truncation error dominates, but at small h, the round-off error dominate.

the minimum of the error would tell us that, we can minimize the error of our computation less than that!
which is 
$$ \dot{\epsilon} = 0 = 1 - \frac{\eta}{h^2} \\ h = h_0 \sim \eta^{\frac{1}{2}} $$
$h_0$ here is the minumum error; which is function only of the computer level constant and not mathematical constant, we can compute with. making h less than that would instead incerease the error not deacrese.

$\eta$ which determins the minimum step length is the constant for a given computer, and it depends on how many bytes the computer hardware uses to store floating-point numbers.


## Numerical Instabilities

sufficiently large step-length causes solution to become unstable.


## Runge-Kutta Methods

probs with Euler method
1. too prone to numerical instabilities.
2. for a given h, trunction error per step is h; which is large enough than the other methods.

