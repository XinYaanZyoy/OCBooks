# Machine Translation and Document Search

_____________

## Transforming word vectors
**THE IDEA**: to translate a word from english to french, first build up word embeddings of english and french, for a given english word, retrieve its word embedding from english vec space, transform it to french vec space using an appropriate transformation, find similar embedding words within french space, and these are candidates for the translation!