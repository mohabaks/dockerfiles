# Build
FROM python:3-alpine as builder

WORKDIR /build

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    git \
    && git clone https://github.com/vysecurity/DomLink.git \
    && cd /build/DomLink \
    && pip install pyinstaller \
    && pip install -r requirements.txt \
    && pyinstaller -F domLink.py

# Final
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=builder /build/DomLink/dist/domLink /usr/bin/domlink

WORKDIR /domlink

ENTRYPOINT ["domlink"]