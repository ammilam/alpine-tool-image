FROM alpine:latest

RUN apk add --update \
  python3 \
  curl \
  which \
  bash \ 
  jq \
  mysql \
  mysql-client

RUN curl -sSL https://sdk.cloud.google.com | bash

RUN rm -rf /tmp/* && \
    rm -rf /var/cache/apk/* 

ENV PATH $PATH:/root/google-cloud-sdk/bin