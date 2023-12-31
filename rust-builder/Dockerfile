# Build
FROM rust:alpine3.18 as build

WORKDIR /build

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    help2man \
    musl-dev \
    make \
    perl \
    git
