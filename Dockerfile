FROM alpine:latest

RUN apk add --update \
  python3 \
  curl \
  which \
  bash

RUN curl -sSL https://sdk.cloud.google.com | bash
ENV PATH $PATH:/root/google-cloud-sdk/bin