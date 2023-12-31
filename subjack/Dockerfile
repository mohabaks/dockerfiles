# Stage 1
FROM golang:alpine3.18 AS builder

RUN apk add --no-cache git \
     && GO111MODULE=off go get -v -u github.com/haccer/subjack

# Final
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=builder /go/bin/subjack /bin/

ENTRYPOINT ["subjack"]