# Build
FROM python:3-alpine as builder

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    git \
    && git clone https://github.com/fortra/impacket.git /impacket

WORKDIR /impacket

COPY build.sh .

RUN ./build.sh


# Release
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=builder /impacket/dist/* /usr/bin/

WORKDIR /impacket