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
    && git clone https://github.com/resyncgg/ripgen.git

RUN cd ripgen \
    && cargo build


# Final
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=builder /build/ripgen/target/debug/ripgen /usr/bin/

WORKDIR /ripgen

ENTRYPOINT ["ripgen"]