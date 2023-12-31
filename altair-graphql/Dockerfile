# BUILD
#   docker build --network host -t local/altair-graphql:latest --build-arg USER=$USER .
# RUN:
#   docker run --rm -d \
#          --cap-add SYS_ADMIN \
#          --device /dev/fuse \
#          -v $HOME/.config/docker/altair:$HOME/.config/"Altair GraphQL Client" \
#          -v $HOME/.config/gtk-3.0:$HOME/.config/gtk-3.0:ro \
#          -v $HOME/.fonts:$HOME/.fonts:ro \
#          -v $HOME/.gtkrc-2.0:$HOME/.gtkrc-2.0:ro \
#          -v $HOME/.icons:$HOME/.icons:ro \
#          -v $HOME/.themes:$HOME/.themes:ro \
#          -v /dev/shm:/dev/shm:z \
#          -v /tmp/.X11-unix:/tmp/.X11-unix \
#          -v /var/run/dbus:/var/run/dbus \
#          --device /dev/dri \
#          --network "$LAN" \
#          -e DISPLAY=$DISPLAY \
#          -e GDK_DPI_SCALE \
#          -e GDK_SCALE \
#          -e QT_DEVICE_PIXEL_RATIO \
#          local/altair-graphql 2>&1 >/dev/null
FROM debian:bookworm-slim

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

ARG RELEASE="6.1.0" \
    USER

RUN apt update \
    && apt install -y \
    wget \
    fuse \
    libfuse2 \
    libglib2.0-0 \
    libnss3 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
    libgtk-3-0 \
    libgbm1 \
    libasound2 \
    xdg-utils \
    && wget https://github.com/altair-graphql/altair/releases/download/v${RELEASE}/altair_${RELEASE}_x86_64_linux.AppImage -O /usr/bin/altair-graphql\
    && chmod +x /usr/bin/altair-graphql \
    && apt clean \
    && apt autoremove --purge -y wget \
    && rm -rf /var/lib/apt/lists/* 

RUN adduser --disabled-password $USER \
     && mkdir -p /home/${USER}/.config/"Altair GraphQL Client" \
     && ln -sf /home/${USER}/.config/"Altair GraphQL Client" /home/${USER}/altair \
     && chown -R ${USER} /home/${USER}

USER ${USER}

WORKDIR /home/$USER

ENTRYPOINT ["altair-graphql"]