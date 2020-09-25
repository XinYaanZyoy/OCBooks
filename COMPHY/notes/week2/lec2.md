# Numerical Integration (Stochastic Methods) Part 2

## 2D

the integration I of f(x,y) over $ x \in \[a,b\] $ and $ y \in \[c,d\] $.

let $ h = \frac{b-a}{m} $, and $ k = \frac{d-c}{n} $ so that $ x_i = a+ih; \forall i \in \mathbb{W} $ and $ y_i = c+jk; \forall j \in \mathbb{W} $

$$ I_{2D,Lower-Left} = hk \sum_{i=0}^{m-1} \sum_{j=0}^{n-1} f(a+ih,c+jk) $$

$$ I_{2D,Lower-Right} = hk \sum_{i=1}^{m} \sum_{j=0}^{n-1} f(a+ih,c+jk) $$

$$ I_{2D,Upper-Left} = hk \sum_{i=0}^{m-1} \sum_{j=1}^{n} f(a+ih,c+jk) $$

$$ I_{2D,Upper-Right} = hk \sum_{i=1}^{m} \sum_{j=1}^{n} f(a+ih,c+jk) $$
