# BUILD:
#   docker build -t local/certipy --network host --build-args USER=$USER .
# RUN:
#   docker run -it --rm \
#          --name "$NAME" \
#          --network host \
#          -v $(pwd):$HOME/certipy \
#          local/certipy $@ 2> /dev/null
FROM python:3-alpine as builder

WORKDIR /build

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    git \
    && git clone https://github.com/ly4k/Certipy.git \
    && cd /build/Certipy \
    && pip install pyinstaller impacket \
    && sed -i 's/\\\\/\//g' Certipy.spec \
    && pyinstaller Certipy.spec


FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=builder /build/Certipy/dist/Certipy /usr/bin/certipy

WORKDIR /certipy

ENTRYPOINT ["certipy"]