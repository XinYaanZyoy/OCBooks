# Numerical Integration (Stochastic Methods) Part 3

## nD

for n dim,

$$ I = \int_{a_1}^{b_1}\int_{a_2}^{b_2}\cdots\int_{a_n}^{b_n} f(x_1, x_2, \cdots, x_n) dx_1 dx_2 \cdots dx_n = \int_{a_i}^{b_i} f(x_i) dx^n $$

n dim integral is n+1 dim volume.

$$ I = V_{n+1} = (\prod_i^n \frac{(b_i-a_i)}{N_i}) (\sum_{i_1=1}^{N_1}\sum_{i_1=2}^{N_2} \cdots \sum_{i_n=1}^{N_n} f(x_i)) $$

let $ \prod_i^n {N_i} = N $

where $\prod_i^n (b_i-a_i)$ is the volume occupied by boundries of function, and $ \frac{\sum_{i_1=1}^{N_1}\sum_{i_1=2}^{N_2} \cdots \sum_{i_n=1}^{N_n} f(x_i)}{N} $ is avg of function within boundries.

$$ \therefore I = V_{n+1} = V_n <f> $$

computationally $V_{n+1}$ has no problem, problem arrises in computing \<f>, just the way we saw in example in last lec.

so to compute <f>, instead of predeterministic method; in which number of nodes gets very hight to be able to finish the comp in an feasibility amount of time, we use stochastic method; in which we choose nodes randomly such that they lie within the boundaries (so within the n dim vol), then compute \<f> at these random nodes!

so we don't know what nodes are to be taken, we just know their boundry. the integration approximated this way is called **Monte Carlo Integration**.

What is the error in statistical estimation of \<f>?

Error is determined by SD (Standard Deviation) of the PDF (Prob. Distribution Func.) of \<f>.

we take a list of random nmbers, find \<f>. do this M times, and therefore we have M \<f>s.

for 1D,

$$ <f> = \frac1M \sum_{j=1}^M <f>_j $$

$$ <f>_j = \frac1N \sum_{i=1}^N [f(x_i)]_j $$

$$ \therefore <f> = \frac{1}{MN} \sum_{j=1}^M \sum_{i=1}^N [f(x_i)]_j $$

where $[]_j$ represents jth random number sequence.

what's the PDF of $ \<f>_j $ ?