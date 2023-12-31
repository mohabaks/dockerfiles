# BUILD:
#   docker build --network host --build-arg USER=$USER -t local/ansible .
# RUN:
#   docker run --rm -it \
#          --network host \
#          --name ansible \
#          -v $HOME/ansible:$HOME/ansible \
#          local/ansible
FROM python:3.7-alpine

RUN apk add --no-cache \
    ca-certificates \
    build-base \
    libffi-dev \
    krb5-dev \
    libressl-dev \
    && pip install pywinrm pywinrm[credssp] pywinrm[kerberos] \
    && python3.7 -m pip install ansible-core==2.11 \
    && apk del build-base

ARG USER

RUN adduser -D $USER

WORKDIR /home/$USER/ansible

USER $USER