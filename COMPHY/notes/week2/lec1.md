# Numerical Integration (Stochastic Methods) Part 1

## 1D

since we're more interested in multi dimensional integration, we'll focus on stochastic methods instead of conventioinal ones.

numerical integ. are needed when we do not know the closed/functional form of function to be integrated or solution.

usual rectangle approx. for integration, which results in either under/over estimation.
build a trapezpoid by joining the boundary function points, which is better than above two. and is average of those!
to furthur increase the accuracy just partition the domain! which looks like;
the integration I of f(x) over $\[a,b\]$.

let $$ h = \frac{b-a}n $$; so that $ x_i = a+ih; \forall i \in \mathbb{W} $

$$ I_{1D,Central} = \frac{h}{2} (f(a)+f(b)+2\sum_{i=1}^{n-1}f(x_i)) $$

this is a central (trapezoidal) difference which is an avg of left (rectangular) and right (rectangular) differences;

$$ I_{1D,Left} = h \sum_{i=0}^{n-1}f(a+ih) $$, and $$ I_{1D,Right} = h \sum_{i=1}^{n}f(a+ih) $$

Error of this is of order $ O(h^2) $ or $ O(n^{-2}) $.