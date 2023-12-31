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
    && git clone https://gitlab.com/dee-see/graphql-path-enum.git \
    && cd graphql-path-enum \
    && cargo build


FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=builder /build/graphql-path-enum/target/debug/graphql-path-enum /usr/bin/

WORKDIR /graphql-path-enum

ENTRYPOINT ["graphql-path-enum"]