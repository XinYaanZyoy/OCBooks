# Machine Translation and Document Search

_____________

## Transforming word vectors
**THE IDEA**: to translate a word from english to french, first build up word embeddings of english and french, for a given english word, retrieve its word embedding from english vec space, transform it to french vec space using an appropriate transformation, find similar embedding words within french space, and these are candidates for the translation!

to find an appropriate transformation, we'll neede a training dataset (subset of whole dictionary), in which we already have eng-fra pairs, we minimize the distance between transformed eglish vec and original french vec to get an appropriate transformation.

find loss by,

$$ Loss = \|\boldsymbol{E}\boldsymbol{T}=\boldsymbol{F}\|_{frobenius} $$

to minimize the loss, loop over;

$$ g = \frac{d}{dR} Loss, R = R - \alpha g $$

**Frobenius Norm**: 
$$ \|\boldsymbol{A}\|_{frobenius} = \sqrt{\sum_{i=1}^m \sum_{j=1}^n |a_{ij}|^2} $$

for simplicity define;

$$ Loss = \|\boldsymbol{E}\boldsymbol{T}=\boldsymbol{F}\|^2_{frobenius} $$

$$ g = \frac{d}{dR} Loss = \frac2m (\boldsymbol{E^T}(\boldsymbol{E}\boldsymbol{T}-\boldsymbol{F})) $$

______________


## Ungraded Lab: Rotation matrices in R2
[notebook](https://github.com/XinYaanZyoy/OCBooks/blob/master/NLP/data/NLP_C1_W4_lecture_nb_01.ipynb)

______________


## K-nearest neighbors
it's a technique to find the nearest neighbors of a predicted point in vec space while translating from eng to fremch!

______________


## Hash tables and hash functions
the usual defination of hash functions and tables, hash function is a function which sets a key for each values depending on a determined relation, one key might have more than values, e.g classify given numbers by dividing it by 10 classes labled (keys) 0 to 9, and remainder will tell which class the number belongs to.

______________


## Locality sensitive hashing
we need a hash function which respects the location of vectors in vector space, and hashes the vectors considering the locality.

to do this, imagine data plotted on 2D plane, we see some clusters of same category, we draw a line which divides this plane into line above or below, we take a normal vector to this line, we dot the vector to be classified, dot it with normal vec, if =0 it's on this line, if >0 it's above, and below if it's <0.

_____________


## Multiple Planes
we draw multiple lines to classify multiple clusters, and then we get an array of signs (1 for pos 0 for neg) for a point or vec in vec space, we then think of this array a binary number and convert it into a number to have it resulted in one hash value for this region.

in this manner we hash the vector space into regions having certain hash vals for a given data.

to convert the binary array into hash (deciaml);

$$ hash = \sum_i^H 2^i h_i $$

_______________


## Ungraded Lab: Hash tables
[notebook](https://github.com/XinYaanZyoy/OCBooks/blob/master/NLP/data/NLP_C1_W4_lecture_nb_02.ipynb)


## Approximate nearest neighbors
but how to find an appropriate lines/planes/hyperplanes which classifies the way previously mentioned?
there might be multiple way to do this, which one is best?
actually we can't actually tell which one is best!
instead of brute forcing, or naive searching, we approximate nearest neighbours by creating multiple set of random planes, each set will hash the vector space, a given point/vec will therefore be in different-different regions, and hence hash value, having multiple of these hashes for a single vec will provie us a way to approximate nearest neghbours.