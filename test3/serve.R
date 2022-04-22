# serve.R
library(plumber)
library(reticulate)

virtualenv_create("test")

##py_install(c("munch", "ortools", "mosek"), envname = "test")
py_install(c("pandas", "numpy"), envname = "test")
py_install(c("tensorflow", "keras"), envname = "test")


use_virtualenv("test")


library(tensorflow)
library(keras)



keras::dataset_mnist()

r <- plumb("api.R")
#r$run()
r$run(host= "0.0.0.0", port=8000, swagger = TRUE)
