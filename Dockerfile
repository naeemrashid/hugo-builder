FROM alpine:latest

MAINTAINER Naeem Rashid <naeem.rashid@copebit.ch>

ENV VERSION 0.67.1
RUN apk add --no-cache git openssl py-pygments curl nodejs nodejs-npm \
    && curl -L https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_extended_${VERSION}_Linux-64bit.tar.gz | tar -xz \
    && mv hugo /usr/bin/hugo \
    && npm install -g autoprefixer postcss-cli \
    && apk del curl
