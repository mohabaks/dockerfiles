# Build
FROM golang:alpine3.18 AS build

RUN apk add --no-cache build-base libpcap-dev \
    && go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest

# Release
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

RUN apk add --no-cache ca-certificates \
    nmap \
    libpcap-dev \
    bind-tools

COPY --from=build /go/bin/naabu /bin/naabu

WORKDIR /naabu

ENTRYPOINT ["naabu"]