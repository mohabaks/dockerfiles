# Build
FROM python:3-alpine as builder

WORKDIR /build

RUN apk add --no-cache \
    ca-certificates \
    binutils \
    git \
    && git clone https://github.com/RedSiege/EyeWitness.git \
    && cd /build/EyeWitness \
    && pip install pyinstaller \
           netaddr \
           selenium \
           fuzzywuzzy \
           pyvirtualdisplay \
           python-Levenshtein \
    && pyinstaller --onefile Python/EyeWitness.py


# Final
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

COPY --from=builder /build/EyeWitness/dist/EyeWitness /usr/bin/eyewitness

WORKDIR /eyewitness

ENTRYPOINT ["eyewitness"]