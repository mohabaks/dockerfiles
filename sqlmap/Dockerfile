FROM python:3-alpine as build

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

ARG HOME_DIR="/usr/share/sqlmap"

RUN apk add --no-cache \
    ca-certificates \
    git \
    && git clone https://github.com/sqlmapproject/sqlmap.git ${HOME_DIR} \
    && apk del git

RUN ln -sf ${HOME_DIR}/sqlmap.py /usr/bin/sqlmap

WORKDIR /sqlmap

ENTRYPOINT ["sqlmap"]