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

and

$$ \because P(Y|X) = \frac{P(Y \bigcap X)}{P(X)} $$

$$ \therefore P(Y)P(X|Y) = P(X)P(Y|X) $$

{% endraw %}

______________________


## Naive Bayes
Naive here stands for a non-rigorous or say, "naive" assumption that "_classes of features to classify are mutually exclusive and hence independent of each other_", which; generally speaking, is not a realistic assumption!
but let's still use it to simplify our problem.

we'll change the way we represent each tweet as a `3D` vec.

**THE IDEA**:
> you've a corpus of two sub corpuses, one of positive and other of negative tweets with its labels, create a vocab of positive tweets, and append to it a vocab of negative tweets, count how many times a word appears in posiitve and negative tweets, divide each of positive and negative counts by length of positive corpus and negative corpus respectively. use this matrix/table to classify binary classes.

**Equations**:

$$ P(w_i|class) = \frac{freq(w_i \in class)}{N_class} ; class \in {1,0} $$

for a subject tweet, we define Naive Bayes Inference Condition Rule for Binary Classification as follows;

$$ \prod_{i=0}^m \frac{P(w_i|1)}{P(w_i|0)} $$

where 1 for positive and 0 for negative is used.

_________________


## Laplacian Smoothing
$P(X)=0$ is kinda debatable topic of mathematical interpretations, for now we'll just assume that we want to avoid such `0` probabilities. to smooth these `0`s out, we'll update our conditional probability equation; whihc we used to build up a table/martrix above, as follows;

$$ P(X|Y) = \frac{freq(w_i \in class)+1}{N_class+N} ; class \in {1,0} $$

where N is length of vocab.