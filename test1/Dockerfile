#FROM rocker/r-ver:4.0.0
FROM rstudio/plumber

#RUN apt-get update && apt-get install -y --no-install-recommends \
#  git-core \
#  libssl-dev \
#  libz-dev \
#  libcurl4-gnutls-dev \
#  libsodium-dev

COPY / /

RUN R -e "install.packages('plumber')"

EXPOSE 8000

ENTRYPOINT ["Rscript", "serve.R"]