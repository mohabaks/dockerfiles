FROM golang:alpine3.18 AS builder

WORKDIR /repo

RUN apk add --no-cache git \
     && git clone https://github.com/tomnomnom/gf.git \
     && cd gf && GO111MODULE=off go build -o /go/bin/gf && cd /repo \
     && git clone https://github.com/tomnomnom/assetfinder.git \
     && cd assetfinder && GO111MODULE=off go build -o /go/bin/assetfinder && cd /repo \
     && go install -v github.com/tomnomnom/meg@latest \
     && go install -v github.com/tomnomnom/waybackurls@latest \
     && go install -v github.com/tomnomnom/httprobe@latest \
     && go install -v github.com/tomnomnom/anew@latest \
     && go install -v github.com/tomnomnom/gron@latest


FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

RUN apk add --no-cache ca-certificates

COPY --from=builder /go/bin/* /bin/