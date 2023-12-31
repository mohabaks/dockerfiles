FROM python:3.10-alpine as builder

WORKDIR /build

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    build-base \
    zlib-dev \
    libffi-dev \
    && pip install clairvoyance

RUN apk del build-base zlib-dev libffi-dev binutils

WORKDIR /clairvoyance

ENTRYPOINT ["clairvoyance"]