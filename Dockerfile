FROM node:14.15.3-alpine

RUN apk add --no-cache --virtual .build-deps \
  build-base \
  libffi-dev \
  libressl-dev \
  openssh-client \
  python3-dev \
  py3-pip \
  && pip3 install --upgrade pip \
  && pip3 install awsebcli \
  && apk del .build-deps

VOLUME /root/.aws

VOLUME /app
WORKDIR /app