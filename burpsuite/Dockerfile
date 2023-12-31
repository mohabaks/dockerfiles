# BUILD:
#   docker build -t local/burpsuite .
# RUN:
#   docker run -d  --rm \
#          --memory 4gb \
#          --name "$NAME" \
#          --network "$PWN" \
#          -e DISPLAY=$DISPLAY \
#          -e GDK_DPI_SCALE \
#          -e GDK_SCALE \
#          -e QT_DEVICE_PIXEL_RATIO \
#          -e _JAVA_AWT_WM_NONREPARENTING=1 \
#          -e _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=gasp' \
#          -v $HOME/.config/docker/burpsuite/.BurpSuite:/home/user/.BurpSuite \
#          -v $HOME/.config/docker/burpsuite/.java:/home/user/.java \
#          -v /tmp/.X11-unix:/tmp/.X11-unix \
#          local/burpsuite
FROM  alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

ARG BURP_RELEASE="2023.11.1.3"

RUN apk add --no-cache \
        openjdk17 \
        ttf-dejavu

RUN mkdir /usr/share/burpsuite \
    && wget -c "https://portswigger-cdn.net/burp/releases/download?product=community&version=${BURP_RELEASE}&type=Jar" -O /usr/share/burpsuite/burpsuite.jar

COPY entrypoint.sh /usr/bin/burpsuite

ARG USER

RUN chmod +x /usr/bin/burpsuite \
    && adduser -D ${USER}

USER ${USER}

ENTRYPOINT ["burpsuite"]