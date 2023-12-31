FROM python:3-alpine as builder

WORKDIR /build

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    git \
    && git clone https://github.com/aboul3la/Sublist3r.git \
    && cd Sublist3r \
    && pip install pyinstaller \
    && pip install -r requirements.txt \
    && pyinstaller -F --hidden-import subbrute sublist3r.py


FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=builder /build/Sublist3r/dist/sublist3r /usr/bin/


ENTRYPOINT ["sublist3r"]