# Build
FROM python:3.10-alpine as builder

WORKDIR /build

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    git \
    && git clone https://github.com/nsonaniya2010/SubDomainizer.git \
    && cd SubDomainizer \
    && pip install pyinstaller \
    && pip install -r requirements.txt \
    && pyinstaller -F SubDomainizer.py


# Final
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

WORKDIR /SubDomainizer

COPY --from=builder /build/SubDomainizer/dist/SubDomainizer /usr/bin/subdomainizer

WORKDIR /subdomainizer

ENTRYPOINT ["subdomainizer"]