# serve.R
library(plumber)
library(reticulate)
library(tensorflow)
library(keras)

#keras::dataset_mnist()

r <- plumb("api.R")
#r$run()
r$run(host= "0.0.0.0", port=8000, swagger = TRUE)
