FROM alpine:latest

MAINTAINER Naeem Rashid <naeem.rashid@copebit.ch>

ENV VERSION 0.67.1
ENV AWSCLI_VERSION 1.18.28
RUN apk add --no-cache libc6-compat g++ git openssl py-pygments curl nodejs nodejs-npm python py-pip\
    && curl -L https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_extended_${VERSION}_Linux-64bit.tar.gz | tar -xz \
    && mv hugo /usr/bin/hugo \
    && npm install -g autoprefixer postcss-cli \
    && pip install awscli==${AWSCLI_VERSION} \
    && apk del --purge curl py-pip
