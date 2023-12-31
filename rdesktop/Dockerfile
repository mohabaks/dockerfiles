# BUILD:
#   docker build --network host -t local/rdesktop:latest --build-arg USER=$USER .
# RUN:
#   docker run --rm -it \
#	   --network "$LAN" \
#	   -e DISPLAY=$DISPLAY \
#	   -v $HOME/.config/docker/rdesktop:$HOME/.local/share/rdesktop \
#	   -v /tmp/.X11-unix:/tmp/.X11-unix \
#	   local/rdesktop $@ 2> /dev/null
FROM alpine:3.18

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

ARG USER

RUN apk add --no-cache \
    ca-certificates \
    rdesktop \
    && adduser -D $USER

USER $USER

ENTRYPOINT ["rdesktop"]
