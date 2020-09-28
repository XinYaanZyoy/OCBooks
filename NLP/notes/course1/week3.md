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


## Euclidean Distance
this is a metric to determine the similarity of two vectors by measuring the distance.

$$ d( \vec v_1 ,\vec v_2 ) = \sqrt{\sum_{i=1}^n (v_{1i} - v_{2i})^2} $$

