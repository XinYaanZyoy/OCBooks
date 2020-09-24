# Numerical Integration (Stochastic Methods) Part 1

since we're more interested in multi dimensional integration, we'll focus on stochastic methods instead of conventioinal ones.

numerical integ. are needed when we do not know the closed/functional form of function to be integrated or solution.

usual rectangle approx. for integration, which results in either under/over estimation.
build a trapezpoid by joining the boundary function points, which is better than above two. and is average of those!
to furthur increase the accuracy just partition the domain! which looks like;
the integration I of f(x) over $\[a,b\]$.
$$ I = \sum_{i=1}^n I_i $$
$$ I_i = \frach2 (f(x_{i-1})+f(x_i)) $$
$$ h = \frac{b-a}n $$
$$ \therfore I = \frach2 (f()) $$