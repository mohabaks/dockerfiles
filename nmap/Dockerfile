FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

RUN apk add --no-cache \
    nmap \
    nmap-scripts \
    nmap-doc \
    nmap-ncat \
    nmap-nping \
    nmap-nselibs

WORKDIR /nmap

ENTRYPOINT ["nmap"]
