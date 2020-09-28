# Machine Translation and Document Search

_____________

## Transforming word vectors
**THE IDEA**: to translate a word from english to french, first build up word embeddings of english and french, for a given english word, retrieve its word embedding from english vec space, transform it to french vec space using an appropriate transformation, find similar embedding words within french space, and these are candidates for the translation!

to find an appropriate transformation, we'll neede a training dataset (subset of whole dictionary), in which we already have eng-fra pairs, we minimize the distance between transformed eglish vec and original french vec to get an appropriate transformation.

find loss by,

$$ Loss = \|\boldsymbol{E}\boldsymbol{T}=\boldsymbol{F}\|_{frobenius} $$