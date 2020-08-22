# Sentiment Analysis with Logistic Regression

_____________________________________________________

## let's learn about supervised machine learning. specifically logistic regression!

**THE IDEA**:
> we have in hand, "input features" and "outcome labels", we define a prediction function with some parameters data, and then we map our 'input features" to some "output labels", we loop over changes of the parameters of function, untill we get a best predicting function; which is achived when error; the difference between "outcome labes" and "output labels", is minimized!

sentiment analysis falls under this category.

E.g;
we've a tweet, and we want to predict wheather it's positive or negative (in a linguistic way ofc! in a           philosophical way even the negative things might look positve from different perspective!), we use logistic regressional classifier for this task, label "positive" to `1`, and "negative" to `0`.
we process the raw tweets in our "training datasets", extract useful features out of it, then we'll train our logistic regressional classifier while minimizing the error, and then we apply this logistic regresssional classifier to do classification on "deployment datasets"?!

**Steps**
1. extract the features
2. train our classifier
3. then use our classifier!

_______________________________________


## How to extract the features out of datasets?

**THE IDEA**:
> define a vocab by listing all the words appearing in our dataset; e.g. list of words in list of tweets(corpus), these are features extracted, then loop over to this vocab and see which words appear in subject tweet from vocab, assign `1` for appearance and `0` for otherwise, this is our vector represeting the subject tweet. 

**Equation**:

A `(n+1)D` vec rep of mth tweet of a corpus
{% raw %}
  $$ X_m = \begin{bmatrix} 1 \\ \vdots \\ {n 1s and 0s} \end{bmatrix} $$
{% endraw %}

logistic regressinal classifier has to learn `n+1` parameters if size of our vocab was `n`. 

since this kind of `(n+1)D` vec has lots of 0s it's called sparse matrix. hence this kind of sparse vector is not a good idea for vocab of bigger sizes.

btw, `+1` in `n+1` corresponds to some extra dimension, bias?, idk! but i imagine it as a unit plane on `(n+1)th` dimension, we point all of our `n` vecs on this plane, idk why! but i think it's to include the posibilty of vector addition as a linear operation may be! idk how it connects to our problem! let's wait, this might resolve in future notes.

_____________________________


## How do we reduce the dimensionality?

let's try to reduce the dimensionality of vecs which represents our tweets to reduce the complexity of the problem.

**THE IDEA**:
> define the so-called frequency table, we take our "training dataset" in which we already know what the labels are, `1` and `0` in our case for positive and negative tweet, build two tables which maps `2-touple` `(word, 1)` and `(word, 0)` to "*number of times that word appears in a tweet*" with label `1` and `0` respectively. then define a `3D` vec for a subject tweet with entries `1`, `positive freq`, and `negative freq`! now a tweet is represented by a `3D` vec instead of a `(n+1)D`!

**Equation**:

A `3D` vec rep of mth tweet of a corpus
{% raw %}
  $$ X_m = \begin{bmatrix} 1 \\ \sum_w count(w, 1) \\ \sum_w count(w, 0) \end{bmatrix} $$
{% endraw %}

but there are few words in tweets which doesn't posses any sentiments, e.g; punctuations, pronouns etc. why are we considering these words as a measure of sentiment of a tweet? we shouldn't right?

_______________

## Preprocessing

let's then preprocess our corpus in such a way that these non-sentiment words don't come into a play of decision of sentiment of a tweet! but ofc we can't eliminate all the non-sentiment words, after all it's a circular problem! so we try to eliminate those well known non-sentimental words in english literature (though this applies to any language!).

punctuations are critical, they help sometimes to help in a specific problem and sometimes it's not needed! though punctuation play a role in a sentiment of a tweet, it's not a big effect after all, so we'll eliminate those!

we'll also eliminate the so-called **STOP WORDS**, this is a list of stop words, e.g; pronouns, conjuctions etc..

to generate the well known english stop words i did the following;

> **INPUT**
> ```
> import nltk
> nltk.download('stopwords')
> from nltk.corpus import stopwords
> print(set(stopwords.words('english')))
> ```

> **OUTPUT**
> ```
> {"aren't", 'once', 've', 'most', 'do', 'against', 'only', "it's", 'what', 'of', 'some', "didn't", 'any', 'such', 'weren', 'with', 'am', 'them', 'isn', 'until', 'between', 'into', 'then', 'an', 'does', 'don', 'so', 'yours', 'wasn', 'was', "doesn't", "mustn't", 'have', "won't", 'very', "you'll", 'did', 'a', "isn't", 'ours', 'were', 'both', 'too', 'itself', 'ma', 'the', 'on', 'because', "wouldn't", 'didn', 'when', 'haven', 'just', "should've", 'before', 'for', "shan't", 'about', 'its', 'shouldn', 'where', 'same', 'your', 'needn', 'my', 'who', 'they', 'mustn', 'by', 'now', 'themselves', 'hers', 'from', 'theirs', 'in', 'nor', 'yourself', 'if', 'wouldn', 'i', 'd', 'shan', 'below', 'be', 'each', 'her', 'no', 't', 'not', 'y', 'why', 'than', 'been', "haven't", 'all', 'or', 'ourselves', 'she', 'has', 'here', "weren't", 'o', 'after', 'while', 'this', 'll', 'it', 'whom', 'under', 'doesn', 'can', "she's", 'is', "shouldn't", 'over', "couldn't", 'again', 'which', 're', 'he', 'that', "needn't", 'myself', "you've", "you'd", "that'll", 'me', 'himself', 'aren', 'there', 'those', 'had', 'we', 's', 'during', 'other', 'these', 'herself', 'having', 'will', 'm', 'but', 'through', 'should', "don't", 'hasn', 'doing', 'mightn', 'more', 'and', 'you', "hasn't", 'him', 'to', "you're", 'yourselves', 'how', 'hadn', 'off', 'ain', 'above', 'further', "hadn't", "mightn't", 'as', 'at', 'out', 'our', "wasn't", 'their', 'own', 'being', 'up', 'are', 'down', 'couldn', 'few', 'won', 'his'}
> ```

we can also eliminate other symbols such as hashtags or only hashes (`#`), mentions or only ats (`@`), any any other symbols, it depends on the dataset and out goal, what should be and what shouldn't be eliminated!

also, the capitals or lower cased, verbs' tense or any prefixes and sufixes doesn't need to be in our game either! so we eliminate them as well, but how?

it's called **STEMMING**, we stem out the suffixes and prefixes to get the stems, before that we lower all the capitals.

hence, the words "AI", "Ai" "ai", "aI" are similar in a sentimental way! (should we count capitals as a measure of extra positivity or negativity according to the corresponding tweet? let's make it simpler and don't do it!)