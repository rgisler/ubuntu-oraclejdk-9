FROM ubuntu:17.04

RUN apt-get update && \
    apt-get install -y software-properties-common python-software-properties && \
	add-apt-repository ppa:webupd8team/java && \
	apt-get update
	
RUN echo "oracle-java9-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections && \
	echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 seen true" | debconf-set-selections && \
    apt-get install -y oracle-java9-set-default
	
RUN apt-get install -y \
        git \
        maven \
        gradle
