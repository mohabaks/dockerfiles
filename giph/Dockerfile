FROM alpine:3.18 as builder

RUN apk add --no-cache \
    git \
    && git clone https://github.com/phisch/giph.git /giph


FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

RUN apk add --no-cache\
        bash \
        xdotool \
        ffmpeg

COPY --from=builder /giph/src/giph /usr/bin/

ARG USER

RUN adduser -D $USER

USER $USER

WORKDIR /home/user

ENTRYPOINT ["giph"]
