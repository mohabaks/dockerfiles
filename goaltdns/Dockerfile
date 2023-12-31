# Stage 1
FROM golang:alpine3.18 AS builder

WORKDIR /repo

RUN apk add --no-cache git \
     && git clone https://github.com/subfinder/goaltdns.git \
     && cd goaltdns \
     && GO111MODULE=off go get -u github.com/subfinder/goaltdns

# Final
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

RUN apk add --no-cache ca-certificates

COPY --from=builder /go/bin/goaltdns /usr/bin/

WORKDIR /goaltdns

ENTRYPOINT ["goaltdns"]