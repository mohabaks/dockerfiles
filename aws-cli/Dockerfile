# BUILD:
#   docker build -t local/aws --build-arg USER=$USER --network host .
# RUN:
#   docker run -it --rm \
#          --name aws-cli \
#          --network host \
#          -v "$HOME/.aws:$HOME/.aws" \
#          local/aws $@ 2> /dev/null
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

RUN apk add --no-cache \
    aws-cli \
    aws-cli-doc \
    groff \
    less

ARG USER

RUN adduser -D $USER

USER $USER

WORKDIR /home/$USER

ENTRYPOINT ["aws"]