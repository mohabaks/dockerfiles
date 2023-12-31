# Build
FROM python:3-alpine as build

WORKDIR /build

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    git \
    && git clone https://github.com/GerbenJavado/LinkFinder.git \
    && cd /build/LinkFinder \
    && pip install pyinstaller \
    && pip install -r requirements.txt \
    && pyinstaller --onefile linkfinder.py


# Final
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=build /build/LinkFinder/dist/linkfinder /usr/bin/

WORKDIR /linkfinder

ENTRYPOINT ["linkfinder"]