from debian:stretch-slim

RUN apt-get update && \
    apt-get install -y \
    	apt-utils \
        bash \
        git \
        python3-pip \
	    expect \
      	expect-dev \
      	wget \
      	unzip
