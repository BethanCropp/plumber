#FROM rocker/r-ver:4.0.0
FROM rstudio/plumber

#FROM rocker/tensorflow

COPY / /

RUN apt-get update --fix-missing \
	&& apt-get install -y \
		ca-certificates \
    	libglib2.0-0 \
	 	libxext6 \
	   	libsm6  \
	   	libxrender1 \
		libxml2-dev


# system libraries of general use
## install debian packages
RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    libxml2-dev \
    libcairo2-dev \
    libsqlite3-dev \
    libmariadbd-dev \
    libpq-dev \
    libssh2-1-dev \
    unixodbc-dev \
    libcurl4-openssl-dev \
    libssl-dev

RUN apt-get install -y \
		python3-pip \
		python3-dev \
	&& pip3 install virtualenv

RUN apt install python3.8-venv

## update system libraries
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean

RUN R -e "install.packages('plumber')"
RUN R -e "install.packages('reticulate')"
RUN R -e "install.packages('tensorflow')"
RUN R -e "install.packages('keras')"

EXPOSE 8000

ENTRYPOINT ["Rscript", "serve.R"]