FROM python:3-alpine as builder

WORKDIR /build

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    git \
    && git clone https://github.com/nicholasaleks/CrackQL.git \
    && cd CrackQL \
    && pip install pyinstaller \
    && pip install -r requirements.txt \
    && pyinstaller -F CrackQL.py 


FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=builder /build/CrackQL/dist/CrackQL /usr/bin/crackql

WORKDIR /crackql

ENTRYPOINT ["crackql"]