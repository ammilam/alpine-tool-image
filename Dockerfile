FROM bash:3.1.23-alpine3.18

RUN apk add --update \
  python3 \
  curl \
  which 
  
RUN cp /usr/local/bin/bash /bin/bash
RUN curl -sSL https://sdk.cloud.google.com | bash
ENV PATH $PATH:/root/google-cloud-sdk/bin