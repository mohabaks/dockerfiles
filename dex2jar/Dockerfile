# RUN:
#   docker run -it --rm \
#          --name dex2jar \
#          --network host \
#          local/dex2jar $@ 2> /dev/null
FROM  alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

RUN apk add --no-cache \
        openjdk17 \
        ttf-dejavu

ARG DEX2JAR_RELEASE="2.1"

RUN wget -c "https://github.com/pxb1988/dex2jar/releases/download/v${DEX2JAR_RELEASE}/dex2jar-${DEX2JAR_RELEASE}.zip" -O /tmp/dex2jar.zip \
    && unzip /tmp/dex2jar.zip -d /tmp \
    && mv /tmp/dex-tools-${DEX2JAR_RELEASE} /usr/share/dex2jar

WORKDIR /dex2jar

ENTRYPOINT ["/usr/share/dex2jar/bin/dex-tools"]