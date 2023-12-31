# Build
FROM rust:alpine3.18 as builder

WORKDIR /build

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    help2man \
    musl-dev \
    make \
    perl \
    git \
    && git clone https://github.com/epi052/feroxbuster

RUN cd feroxbuster \
    && make


# Final
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=builder /build/feroxbuster/target/release/feroxbuster /usr/bin/

WORKDIR /feroxbuster

ENTRYPOINT ["feroxbuster"]