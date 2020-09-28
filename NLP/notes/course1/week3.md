# Vector Space Models

_______________

## intro

**Philosophy**:
> "You shall know a word by the company it keeps" - Firth, 1957

**THE IDEA**:
we identify context of the words and relations to other words in text, we represent them as vectors, and this captures the relative meaning of each word, and hense an appropriate interpretation of text.

______________


## Word by Word and Word by Doc

1. Word by Word
**THE IDEA**: for all words in a corpus, check against a given word, and given value of k, wheather the co-occurences are within distance k, count all those co-ocurences, and assign it to the entry in vector representing this given word and entries representing co-occurences with other words within k distance, this vector thus is n (vocab len) dimensional. and matrix is also n dimensional.

2. Word by Doc
**THE IDEA**: we've a corpus, which is categorized, for a given word, we count number of times the word appears in in each category, and assign it to the vector entry, the vector thus is n (vocab len) dimensional. and matrix is n by m (number of categories) dimensional. so m vectors of corpus in vector space whose bases are n words.

by calculating the Angle distance, we interpret it as similarity measurement.

______________


## Ungraded Lab: Linear algebra in Python with Numpy
[notebook](https://github.com/XinYaanZyoy/OCBooks/blob/master/NLP/data/NLP_C1_W3_lecture_nb_01.ipynb)

_____________


## Euclidean Distance
this is a metric to determine the similarity of two vectors by measuring the distance.

$$ d( \vec v_1 ,\vec v_2 ) = \sqrt{\sum_{i=1}^n (v_{1i} - v_{2i})^2} $$

it's also called norm of the difference vector.

in python,
```
np.linalg.norm(v1-v2)
```

________________


## Cosine Similarity: Intuition
ofc, it's obvious that Euclidean Distnce doesn't find similarities if the vectors are not on the same circles, because the small length vec might be similar to large length vec than another large one, therefore the angle between the vector should also be accounted!

________________


## Cosine Similarity
it's obvious that colinear vecs will have 1 and normal will have 0, due to cosine of angle.
to compute cosine of angle,

$$ cos(\theta_{12}) = \frac{\vec v_1 \cdot \vec v_2}{\|\vec v_1\| \|\vec v_2\|} $$

_______________


## Manipulating Words in Vector Spaces

suppose we've a vector space of vecs representing countries and capitals, we know one pair, and want to predict a pair of a given member, e.g. we know capital of USA is DC, and want to know capital of Russia.

we find a relation between USA and DC, and assume that this relation must be there for capital of russia and Russia!

so let `Rel = DC-USA` then `Rel = CapitalOfRussia-Russia` therefore `CapitalOfRussia = DC-USA+Russia`.

______________


## Ungraded Lab: Manipulating word embeddings
[notebook](https://github.com/XinYaanZyoy/OCBooks/blob/master/NLP/data/NLP_C1_W3_lecture_nb_02.ipynb)

______________


## Visualization and PCA
PCA == Principal Component Analysis, we can visualize the vectors as previously done, but if the dimensions of vectors gets larger (>2), it's impossible to visualize, there comes the PCA, which helps us to reduce the dimensionalilty of vecs to 3 or lower dims.

**THE IDEA**: let's say we have 2D data, and want to reduce to 1D, we need to find uncorelated feature of the data, which is done by PCA algo., and then you just project all the data points (vecs) onto that 1D line representing the uncorelated feature of the data.

_________________


## PCA Algorithm
**Question**: How to find the uncorrelated features of the data and reduce the dimensions while retaining as much info as possible about the original data.
**Ans**: Eigenvecs; of the covariance (Euclidean/Cosine) matrix of the data, represents the directions of uncorrelated features of the data, and the Eigenvals represents the variance of the data in those new features.

**Algo**:
1. Mean normalize the data
2. get the covariance matrix of the data
3. perform SVD (single Value decomposition) on this matrix
4. this will return list of three matrixes, 1st is of eigen vecs (cols), 2nd is of eigen vals (diag).
5. project the data! by dotting the matrix of word embeddings to the matrix of eigen vals till n; where n is the desired dimension of the data.

__________________


## Ungraded Lab: Another explanation about PCA
[notebook](https://github.com/XinYaanZyoy/OCBooks/blob/master/NLP/data/NLP_C1_W3_lecture_nb_03.ipynb)

______________