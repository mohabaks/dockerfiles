FROM  alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

ARG JADX_RELEASE="1.4.7"

RUN apk add --no-cache \
        openjdk17 \
        ttf-dejavu \
    && mkdir /usr/share/jadx \
    && cd /usr/share/jadx \
    && wget -c "https://github.com/skylot/jadx/releases/download/v${JADX_RELEASE}/jadx-${JADX_RELEASE}.zip" -O /tmp/jadx.zip \
    && unzip /tmp/jadx.zip \
    && rm /tmp/jadx.zip

COPY entrypoint.sh /usr/bin/startjadx

WORKDIR /jadx

ENTRYPOINT ["startjadx"]