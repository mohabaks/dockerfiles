# Build
FROM python:3.9-alpine as build

WORKDIR /build

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    git \
    && git clone https://github.com/JLospinoso/unfurl.git \
    && cd /build/unfurl \
    && pip install pyinstaller \
    && pyinstaller --onefile unfurl.py


# Final
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=build /build/unfurl/dist/* /usr/bin/

ENTRYPOINT ["unfurl"]