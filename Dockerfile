FROM alpine:3.6

RUN apk add --update \
  python3 \
  curl \
  which \
  bash

RUN exec /bin/bash
RUN curl -sSL https://sdk.cloud.google.com | bash

ENV PATH $PATH:/root/google-cloud-sdk/bin