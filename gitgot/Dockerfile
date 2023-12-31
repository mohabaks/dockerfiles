FROM python:3-alpine as builder

WORKDIR /build

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    build-base \
    git \
    libfuzzy2-dev \
    && git clone https://github.com/BishopFox/GitGot.git \
    && cd GitGot \
    && pip install pyinstaller \
    && pip install -r requirements.txt \
    && pyinstaller -F gitgot.py


FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=builder /build/GitGot/dist/gitgot /usr/bin/

WORKDIR /gitgot

ENTRYPOINT ["gitgot"]