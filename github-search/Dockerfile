# Build
FROM python:3-alpine as builder

WORKDIR /build

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    git \
    && git clone https://github.com/gwen001/github-search.git \
    && cd /build/github-search \
    && pip install pyinstaller \
    && pip install -r requirements.txt \
    && pyinstaller --onefile github-subdomains.py \
    && pyinstaller --onefile github-secrets.py \
    && pyinstaller --onefile github-endpoints.py \
    && pyinstaller --onefile github-users.py \
    && pyinstaller --onefile github-employees.py

# Final
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=builder /build/github-search/dist/* /usr/bin/

WORKDIR /github-search