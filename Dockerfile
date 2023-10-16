FROM woahbase/alpine-mysql

RUN apk add --update \
  python3 \
  curl \
  which \
  bash \ 
  jq \
  mysql-client

RUN curl -sSL https://sdk.cloud.google.com | bash

RUN rm -rf /tmp/* && \
    rm -rf /var/cache/apk/* 

ENV PATH $PATH:/root/google-cloud-sdk/bin