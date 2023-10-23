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
    
RUN curl -o cloud-sql-proxy https://storage.googleapis.com/cloud-sql-connectors/cloud-sql-proxy/v2.7.1/cloud-sql-proxy.linux.amd64

RUN chmod +x cloud-sql-proxy 

ENV PATH $PATH:/root/google-cloud-sdk/bin
