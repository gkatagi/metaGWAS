# Ubuntu empty image
FROM ubuntu:18.04

# install apt dependencies
RUN apt-get update 
RUN apt-get install -y curl wget make cmake build-essential
RUN apt-get install -y git
RUN apt-get install -y libzip-dev zlib1g-dev
RUN apt-get install -y r-base

RUN git clone https://github.com/statgen/METAL.git \ 
	&& cd METAL \
	&& mkdir build && cd build \
	&& cmake .. \ 
	&& make \
	&& make test \
	&& make install

