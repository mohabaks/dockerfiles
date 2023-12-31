# BUILD
#   docker build -t local/brutespray --build-arg USER=$USER --network host .
# RUN:
#   docker run -it --rm \
#          --name brutespray \
#          --network host \
#          -h "$NAME" \
#          local/brutespray $@ 2> /dev/null
FROM python:3-alpine as builder

WORKDIR /build

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    git \
    && git clone https://github.com/x90skysn3k/brutespray.git \
    && cd /build/brutespray \
    && pip install pyinstaller \
    && pip install -r requirements.txt \
    && pyinstaller -F brutespray.py


# Final
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

WORKDIR /BruteSpray

COPY --from=builder /build/brutespray/dist/brutespray /usr/bin/

WORKDIR /brutespray

ENTRYPOINT ["brutespray"]