FROM python:3.8-bookworm

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

RUN apt update && apt install -y \
        libpcap-dev

RUN pip install --upgrade pip\
    && pip install pyinstaller