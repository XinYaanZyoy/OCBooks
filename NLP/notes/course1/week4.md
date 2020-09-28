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