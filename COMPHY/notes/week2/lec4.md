# LEC4: random numbers

random numbers (sequence) is one for which any two of these numbers have corelation 0 and that these sequences can't be predicted.

- [https://www.random.org/](https://www.random.org/) uses lightning discharge in atmosphere
- [http://www.randomnumbers.info/](http://www.randomnumbers.info/) uses quantum sources like light through semi transparent mirror.
- [https://comscire.com/](https://comscire.com/) uses hardware noice

fortran compiler already has (subroutines) a predefined RNG, which is actually pseudo RNG.

## linear congruent/modulo gen

$$ x_i &\equiv (a x_{i-1} + c) \mod m; i>0, x_i,a,c,m \in \mathbb{Z} $$

where m determines the period; a and c are also crucial for the period, having large m with inaprpriate a and c will not guarantee randomization.

for i=0, $x_0$ is called seed.

## properties of rand nums

all rand nums $x_i \in [0,1]$

normal dist. so prop = 1

## tests of rand nums

1. 

$\mu$ is avg, and $\sigma$ is SD.

suppose we generate N rand nums.

what is the $k^{th}$ moment of the set of N rand nums.

$k^{th}$ moment $ = \<x^k> = \frac{\sum_{i=1}^N x_i^k p(x_i)}{N} $

for uniform dist. $p(x_i) = 1$

$$ <x^k> = \frac{\sum_{i=1}^N x_i^k}{N} $$

for $$ N \to \infty, <x^k> = \int_0^1 x^k dx = \frac{1}{k+1} $$

$$ \because \mu = <x^1> \therefore \mu = \frac12 = 0.5 $$

$$ \because \sigma = \sqrt{<x^2>-<x>^2} \therefore \sigma = \frac{1}{\sqrt{12}} = 0.2886 $$


2. 

