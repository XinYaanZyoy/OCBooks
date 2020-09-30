# Finite Difference Method

- taylor series for,

$$ f(x+h) = f(x) + hf'(x) + \frac{h^2}{2!}f''(x) + O(h^3) $$

$$ f(x-h) = f(x) - hf'(x) + \frac{h^2}{2!}f''(x) - O(h^3) $$

$1^{st}$ order differentiation of function of one real var with $2^{nd}$ order accuracy is,

$$ f'(x) = \frac{f(x+h)-f(x-h)}{2h} + O(h^2) $$

- on non uniform mesh the reduction of accuracy is observed than that on uniform mesh.

- for 1D laplace equation,
there can be two types of boundary cond.

1. Drichlet BC at two end points. (vals)
2. Neumann BC at one and Drichlet another. (val + grad)

- small change in BC should not change the sol.