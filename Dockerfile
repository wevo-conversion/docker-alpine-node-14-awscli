FROM node:14.17.4-alpine3.13

RUN apk add --no-cache \
  build-base \
  rust \
  cargo \
  libffi-dev \
  libressl-dev \
  openssh-client \
  git \
  python3-dev \
  py3-pip \
  && pip3 install --upgrade pip \
  && pip3 install awsebcli --ignore-installed six

VOLUME /root/.aws

VOLUME /app
WORKDIR /app
