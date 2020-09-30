# Numerical Integration (Stochastic Methods) Part 3

## dD

for n dim,

$$ I = \int_{a_1}^{b_1}\int_{a_2}^{b_2}\cdots\int_{a_n}^{b_n} f(x_1, x_2, \cdots, x_n) dx_1 dx_2 \cdots dx_n = \int_{a_i}^{b_i} f(x_i) dx^n $$

n dim integral is n+1 dim volume.

$$ I = V_{n+1} = \prod_i^n \frac{(b_i-a_i)}{N_i} \sum_{i_1=1}^{N_1}\sum_{i_1=2}^{N_2} \cdots \sum_{i_n=1}^{N_n} f(x_i) $$

let $ \prod_i^n {N_i} = N $

where $\prod_i^n (b_i-a_i)$ is the volume occupied by boundries of functioln, and $ \frac{\sum_{i_1=1}^{N_1}\sum_{i_1=2}^{N_2} \cdots \sum_{i_n=1}^{N_n} f(x_i)}{N} $ is avg of function within boundries.

$$ \therefore I = V_{n+1} = V_n <f> $$