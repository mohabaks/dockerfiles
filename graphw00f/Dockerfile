FROM python:3-alpine as builder

WORKDIR /build

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    git \
    && git clone https://github.com/dolevf/graphw00f.git \
    && cd graphw00f \
    && pip install pyinstaller requests \
    && pyinstaller -F --hidden-import graphw00f main.py


FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=builder /build/graphw00f/dist/main /usr/bin/graphw00f

WORKDIR /graphw00f

ENTRYPOINT ["graphw00f"]