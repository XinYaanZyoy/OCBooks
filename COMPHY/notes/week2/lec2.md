# Numerical Integration (Stochastic Methods) Part 2

## 2D

the integration I of f(x,y) over $ x \in \[a,b\] $ and $ y \in \[c,d\] $.

let $ h = \frac{b-a}{m} $, and $ k = \frac{d-c}{n} $ so that $ x_i = a+ih; \forall i \in \mathbb{W} $ and $ y_i = c+jk; \forall j \in \mathbb{W} $

$$ I_{2D,Lower-Left} = hk \sum_{i=0}^{m-1}\sum_{j=0}^{n-1}f(a+ih,c+jk) $$

$$ I_{2D,Lower-Right} = hk \sum_{i=1}^{m}\sum_{j=0}^{n-1}f(a+ih,c+jk) $$

$$ I_{2D,Upper-Left} = hk \sum_{i=0}^{m-1}\sum_{j=1}^{n}f(a+ih,c+jk) $$

$$ I_{2D,Upper-Right} = hk \sum_{i=1}^{m}\sum_{j=1}^{n}f(a+ih,c+jk) $$

and avg of all these (or trapezoidal) is central integal; (it's easier to imagine rectangles on a grid of index i and j, and cover total area.)

$$ I_{2D,Central} = \frac{hk}{4} [(f(a,c)+f(b,c)+f(a,d)+f(b,d)) + 2(\sum_{i=1}^{m-1}f(x_i,c) + \sum_{i=1}^{m-1}f(x_i,d) + \sum_{j=1}^{n-1}f(a,y_j) + \sum_{j=1}^{n-1}f(b,y_j) ) + 4(\sum_{j=1}^{n-1}\sum_{i=1}^{m-1}f(x_i,y_j)) ] $$

Error of this is of order $ O(h^2) + O(k^2) $ or $ O(m^{-2}) + O(n^{-2}) $.

for a d dim integral;
total nodes N = $n^d$ if there are n nodes in each dim.

$ \therefore n = N^{\frac 1k} $, Error $ \approx O(n^{-2}) \approx O(N^{\frac{-2}{k}}) $

so, as dim of integral increases this (grid method) approximation accumulates more and more error!

Computational cost of 1D integral was $O(n)$ for n nodes, and so dD integral it's $O(n^d)$, so the computational cost increases as dim increases.

to put comp cost in a perspective; suppose we've a system of 10 particles, and want to find out the normalized avg hamiltonian.
since each particle has 3 dim, so the total dim of hamiltonian and wavefunction(and dual one) are 3X10=30, let's take 10 nodes for each dim, so the total nodes of the whole system over which the inegral is to be determined are $10^30$, let's say we have a 100Tflop comp; which means the computer can do $10^14^ floating point operations per second, then to do $10^30$ operations, it'll take $10^16$ seconds.
compare it with the age of universe; which is $10^17$ seconds!

this is a trapezoidal rule, there're many like these, e.g; simpson's 1/3, gaussian quadrature etc... those are computationally efficient, but still not fast enough or accurate enough to evaluate multi dim integrals.

these mathods are deterministic (grid based), becuase we've a predetermined points where to evaluate integrals.

the answer to the feasibility and accuracy is "stochastic methods"!

use $ \int_0^1 \frac{1}{1+x^2} dx = \frac{\pi}{4}$ to learn the behavior of trapezoidal rule.