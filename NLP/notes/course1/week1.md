# Sentiment Analysis with Logistic Regression

## let's learn about supervised machine learning. specifically logistic regression!

**THE IDEA**:
> you have in hand, "input features" and "outcome labels", you define a prediction function with some parameters data, and then you map your 'input features" to some "output labels", you loop over this changes of the parameters of function, untill you get a best predicting function; which is achived when error; the difference between "outcome labes" and "output labels", is minimized!

sentiment analysis falls under this category.

E.g;
    you've a tweet, and you want to predict wheather it's positive or negative (in a linguistic way of! in a           philosophical way even the negative things might look positve from different perspective!), you use logistic regressional classifier for this task, label "positive" to 1, and "negative" to 0.
    you process the raw tweets in your "training datasets", extract useful features out of it, then you'll train your logistic regressional classifier while minimizing the error, and then you apply this logistic regresssional classifier to do classification on "deployment datasets"?!

**Steps**
    1. extract the features
    2. train your classifier
    3. then use your classifier!


## How to extract the features out of datasets?

**THE IDEA**:
> define a vocab by listing all the words appearing in your dataset; e.g. list of words in list of tweets, these are features extracted, then loop over to this vocab and see which words appear in it from vocab, assign 1 for appearance and 0 for otherwise, this is your vector represeting the subject tweet. 

since this kind of 1D matrix has lots of 0s it's called sparse matrix. logistic regressinal classifier has to learn `n+1` parameters if size of your vocab was n. hence this is not a good idea for vocab of bigger sizes.