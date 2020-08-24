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

$$ likelyhood \buildrel \rm def \over {:=} \prod_{i=0}^m \frac{P(w_i|1)}{P(w_i|0)} $$

where 1 for positive and 0 for negative is used.

_________________


## Laplacian Smoothing
$P(X)=0$ is kinda debatable topic of mathematical interpretations, for now we'll just assume that we want to avoid such `0` probabilities. to smooth these `0`s out, we'll update our conditional probability equation; whihc we used to build up a table/martrix above, as follows;

$$ P(X|Y) = \frac{freq(w_i \in class)+1}{N_{class}+N} ; class \in {1,0} $$

where N is length of vocab.

_____________


## Log Likelihood
sentiments can have a continous spectrum of classes, but to simplify we'll take 3 classes, positive, neutral, and negative.

the polarity is defined as;

$$ polarity(w_i) = \frac{P(W_i|1)}{P(W_i|0)} $$
$$ polarity(w_i) \approx \frac{freq(w_i,1)+1}{freq(w_i,0)+1} $$

if $ polarity(w_i) > 1 $ it's positive, if $ polarity(w_i) < 1 $ it's negative, if $ polarity(w_i) = 1 $ it's neutral.

$$ likelyhood = \prod_{i=0}^m polarity(w_i) $$

the naive bayes' inference equaiton assumes that length of negative and positive corpus is same, in reality; however, this might not be the case, so what we do is, multiply our previous equation (the likelyhood) by prior term;

$$ prior \buildrel \rm def \over {:=} \frac{P(1)}{P(0)} $$
$$ \text{inference_term} = \text{prior} * \text{likelyhood} $$

since we're dealing with probs and they're in `(0,1)`, multiplications of these numbers are even smaller, such computations might arise a case of underflaw, that it can't be stored in memory(WHY?)! so we transform these numbers by using logs, with base e; the euler number 2.71828182846.

$$ \ln \text{inference_term} = \ln \text(prior) + \ln \text(likelihood) $$

for our most of the simplified cases, the prior is `1`, and hence log prior is `0`.

$$ let \lambda(w) = \ln polarity(w) = \ln \frac{P(w|1)}{P(w|0)} $$

$$ \ln \text(likelihood) = \sum_{i=1}^m \lambda(w_i) $$

if \ln \text(likelihood)) > 0 $ it's positive, if $ \ln \text(likelihood) < 0 $ it's negative, if $ \ln \text(likelihood) = 0 $ it's neutral.
