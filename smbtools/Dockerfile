FROM kalilinux/kali-rolling:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt dist-upgrade -y  && apt install -y \
    smbclient \
    smbmap

WORKDIR /smbtools