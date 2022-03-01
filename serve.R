# serve.R
library(plumber)
r <- plumb("api.R")
#r$run()
r$run(host= "0.0.0.0", port=8000, swagger = TRUE)
