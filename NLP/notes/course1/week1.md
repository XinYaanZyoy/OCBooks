# Sentiment Analysis with Logistic Regression

## let's learn about supervised machine learning. specifically logistic regression!

**THE IDEA**:
> you have in hand, "input features" and "outcome labels", you define a prediction function with some parameters data, and then you map your 'input features" to some "output labels", you loop over this changes of the parameters of function, untill you get a best predicting function; which is achived when error; the difference between "outcome labes" and "output labels", is minimized!

sentiment analysis falls under this category.

E.g;
    you've a tweet, and you want to predict wheather it's positive or negative (in a linguistic way of! in a           philosophical way even the negative things might look positve from different perspective!), you use logistic regressional classifier for this task, label "positive" to `1`, and "negative" to `0`.
    you process the raw tweets in your "training datasets", extract useful features out of it, then you'll train your logistic regressional classifier while minimizing the error, and then you apply this logistic regresssional classifier to do classification on "deployment datasets"?!

**Steps**
    1. extract the features
    2. train your classifier
    3. then use your classifier!


## How to extract the features out of datasets?

**THE IDEA**:
> define a vocab by listing all the words appearing in your dataset; e.g. list of words in list of tweets(corpus), these are features extracted, then loop over to this vocab and see which words appear in subject tweet from vocab, assign `1` for appearance and `0` for otherwise, this is your vector represeting the subject tweet. 

**Equation**
A `(n+1)D` vec rep of mth tweet of a corpus
{% raw %}
    $$ X_m = \begin{bmatrix} 1 \\ ... \\ 1s or 0s n times \end{bmatrix]} $$
{% endraw %}

logistic regressinal classifier has to learn `n+1` parameters if size of your vocab was `n`. 
since this kind of `(n+1)D` matrix has lots of 0s it's called sparse matrix. 
hence this kind of sparse vector is not a good idea for vocab of bigger sizes.
btw, `+1` in `n+1` corresponds to some extra dimension, bias?, idk! but i imagine it as a unit plane on `(n+1)th` dimension, we point all of our `n` vecs on this plane, idk why! but i think it's to include the posibilty of vector addition as a linear operation may be! idk how it connects to our problem! let's wait this might resolve in future notes.

## How do we reduce the dimensionality?

let's try to reduce the dimensionality of vecs which represents our tweets.

**THE IDEA**
define the so-called frequency table, you take your "training dataset" in which you already know what the labels are, `1` and `0` in our case for positive and negative tweet, build two tables which maps 2-touple (word, `1`) and (word, `0`) to "number of times that word appears in a tweet" with label `1` and `0` respectively. then define a 3D vec for a subject tweet with entries 1, positive freq, and negative freq! a tweet is represented by a `3D` vec instead of a `(n+1)D`!

**Equation**
A `3D` vec rep of mth tweet of a corpus
{% raw %}
  $$ X_m = \begin{bmatrix} 1 \\ \sum_w count(w, 1) \\ \sum_w count(w, 0) \end{bmatrix} $$
{% endraw %}