# Sentiment Analysis with Naïve Bayes

____________________________

## Conditional Probabilities
conditional probabilities are kind easy-peasy if we know basic set theory and defination of probability in terms of sets.

**Equations**:

$$ P(X|Y) = \frac{P(X \bigcap Y)}{P(Y)} $$

it says, for a given booleanity of Y what's the probability that X would have the same booleanity?

__________________


## Bayes' Rule
again pretty straight forward from Conditional Probabilities.

**Equations**:

{% raw %}

$$ \because P(X|Y) = \frac{P(X \bigcap Y)}{P(Y)} $$

, and

$$ \because P(Y|X) = \frac{P(Y \bigcap X)}{P(X)} $$

$$ \therefore P(Y)P(X|Y) = P(X)P(Y|X) $$

{% endraw %}