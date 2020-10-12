# LEC4: random numbers

random numbers (sequence) is one for which any two of these numbers have corelation 0 and that these sequences can't be predicted.

- [https://www.random.org/](https://www.random.org/) uses lightning discharge in atmosphere
- [http://www.randomnumbers.info/](http://www.randomnumbers.info/) uses quantum sources like light through semi transparent mirror.
- [https://comscire.com/](https://comscire.com/) uses hardware noice

fortran compiler already has (subroutines) a predefined RNG, which is actually pseudo RNG.

## linear congruent/modulo gen

$$ x_i \equiv (a x_{i-1} + c) \mod m; i>0, x_i,a,c,m \in \mathbb{Z} $$

where m determines the period; a and c are also crucial for the period, having large m with inaprpriate a and c will not guarantee randomization.

for i=0, $x_0$ is called seed.

## properties of rand nums

all rand nums $x_i \in [0,1]$

normal dist. so prop = 1

## tests of rand nums

1. shape of distribution

    $\mu$ is avg, and $\sigma$ is SD.

    suppose we generate N rand nums.

    what is the $k^{th}$ moment of the set of N rand nums.

    $k^{th}$ moment $ = \<x^k> = \frac{\sum_{i=1}^N x_i^k p(x_i)}{N} $

    for uniform dist. $p(x_i) = 1$

    $$ <x^k> = \frac{\sum_{i=1}^N x_i^k}{N} $$

    for $ N \to \infty, \<x^k> = \int_0^1 x^k dx = \frac{1}{k+1} $

    $$ \because \mu = <x^1>, \therefore \mu = \frac12 = 0.5 $$

    $$ \because \sigma = \sqrt{<x^2>-<x>^2}, \therefore \sigma = \frac{1}{\sqrt{12}} = 0.2886 $$

2. degree of correlation (autocorrelation func)

    $$ c_k = \frac{<x_{i+k}x_i>-<x_i>^2}{\sigma}; <x_{i+k}x_i> = \frac{\sum_{i=1}^{N-k} x_ix_{i+k}}{N-k} $$

    correlation of a number with itself is when k=0, therefore when $C_k = 1$; a high correlation as expected.

    for uncorrelated numbers we expect ideally $C_k = 0$, and numerically (reality) $C_k \to 0$

    so as k increases $c_k$ should converge to 0.

3. scatter plot
a simple way to determine the correlation by plotting $x_i$ and $x_i +1$ and see if there's no pattern.


## in ForTran

[RNG.f90](https://github.com/XinYaanZyoy/OCBooks/blob/master/COMPHY/data/RNG.f90)
[test_RNG.f90](https://github.com/XinYaanZyoy/OCBooks/blob/master/COMPHY/data/test_RNG.f90)
