FROM openjdk:8-jdk-alpine

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

WORKDIR /app

ARG RELEASE="0.0.6"

RUN wget -c "https://github.com/frohoff/ysoserial/releases/download/v${RELEASE}/ysoserial-all.jar"

ENTRYPOINT ["java", "-jar", "ysoserial-all.jar"]