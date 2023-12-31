FROM golang:alpine3.18 AS builder

WORKDIR /builder

RUN apk add --no-cache git \
     && git clone https://github.com/tillson/git-hound.git \
     && cd git-hound \
     && go build -o githound 


FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

RUN apk add --no-cache ca-certificates

COPY --from=builder /builder/git-hound/githound /bin/

WORKDIR /githound

ENTRYPOINT ["githound"]