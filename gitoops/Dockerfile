FROM golang:alpine3.18 AS builder

WORKDIR /build

RUN apk add --no-cache git \
    && git clone https://github.com/ovotech/gitoops.git \
    && cd gitoops \
    && go build -o gitoops ./cmd


FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

RUN apk add --no-cache ca-certificates

COPY --from=builder /build/gitoops/gitoops /bin/

WORKDIR /gitoops

ENTRYPOINT ["gitoops"]