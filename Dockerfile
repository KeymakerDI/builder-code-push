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

RUN wget https://nodejs.org/dist/v10.16.0/node-v10.16.0-linux-x64.tar.xz
    && mkdir usr/local/lib/nodejs \
    && xz -d node-v10.16.0-linux-x64.tar.xz \
    && tar -xvf node-v10.16.0-linux-x64.tar \
    && mkdir usr/local/lib/nodjs \
    && mv node-v10.16.0-linux-arm64 usr/local/lib/nodejs \
    && cd usr/local/lib/nodejs/ \
    && echo "VERSION=v10.16.0" >> ~/.profile
    && echo "DISTRO=linux-x64" >> ~/.profile \
    && echo "export PATH=/usr/local/lib/nodejs/node-v10.16.0-linux-x64/bin:$PATH" >> ~/.profile \
    && source ~/.profile \
    && npm install -g code-push-cli \
