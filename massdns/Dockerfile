# Build
FROM alpine:3.18 AS builder

WORKDIR /build

RUN apk add --no-cache --virtual .build-deps git build-base \
    &&  git clone --depth=1 https://github.com/blechschmidt/massdns.git \
    && cd massdns && make

# Release
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

RUN apk add --no-cache ca-certificates 

COPY --from=builder /build/massdns/bin/massdns /usr/bin/

WORKDIR /massdns

ENTRYPOINT ["massdns"]