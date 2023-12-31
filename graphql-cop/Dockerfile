FROM python:3-alpine as builder

WORKDIR /build

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    git \
    && git clone https://github.com/dolevf/graphql-cop.git \
    && cd graphql-cop \
    && pip install pyinstaller \
    && pip install -r requirements.txt \
    && pyinstaller -F graphql-cop.py 


FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=builder /build/graphql-cop/dist/graphql-cop /usr/bin/

WORKDIR /graphql-cop

ENTRYPOINT ["graphql-cop"]