FROM golang:alpine3.18 AS builder

RUN  apk add --no-cache \
         gcc musl-dev \
     && go install -v github.com/BishopFox/jsluice/cmd/jsluice@latest


FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

RUN apk add --no-cache ca-certificates

COPY --from=builder /go/bin/* /bin/

WORKDIR /jsluice

ENTRYPOINT ["jsluice"]