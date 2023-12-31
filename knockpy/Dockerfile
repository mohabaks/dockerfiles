# Build
FROM python:3-alpine as build

WORKDIR /build

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    git \
    && git clone https://github.com/guelfoweb/knock.git \
    && cd /build/knock \
    && pip install pyinstaller \
    && pip install -r requirements.txt \
    && pyinstaller --onefile knockpy.py


# Final
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=build /build/knock/dist/knockpy /usr/bin/knockpy

WORKDIR /knockpy

ENTRYPOINT ["knockpy"]