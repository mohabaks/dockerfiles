# BUILD
#   docker build --network host -t local/caido:latest --build-arg USER=$USER .
# RUN:
#   docker run --rm -d \
#          --cap-add SYS_ADMIN \
#          --device /dev/fuse \
#          -v $HOME/.local/share/caido/:$HOME/.local/share/caido \
#          -v $HOME/.config/gtk-3.0:$HOME/.config/gtk-3.0:ro \
#          -v $HOME/.fonts:$HOME/.fonts:ro \
#          -v $HOME/.gtkrc-2.0:$HOME/.gtkrc-2.0:ro \
#          -v $HOME/.icons:$HOME/.icons:ro \
#          -v $HOME/.themes:$HOME/.themes:ro \
#          -v /dev/shm:/dev/shm:z \
#          -v /tmp/.X11-unix:/tmp/.X11-unix \
#          -v /var/run/dbus:/var/run/dbus \
#          --device /dev/dri \
#          -e DISPLAY=$DISPLAY \
#          -e GDK_DPI_SCALE \
#          -e GDK_SCALE \
#          -e QT_DEVICE_PIXEL_RATIO \
#          local/caido 2>&1 >/dev/null
FROM debian:bookworm-slim

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

ARG USER

RUN apt update \
    && apt install -y \
    wget \
    fuse \
    libfuse2 \
    libglib2.0-0 \
    libopengl0 \
    libnss3 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
    libgtk-3-0 \
    libgbm1 \
    libasound2 \
    xdg-utils \
    && wget https://storage.googleapis.com/caido-releases/v0.30.0/caido-desktop-linux-v0.30.0-c60f15f7.AppImage -O /usr/bin/caido \
    && chmod +x /usr/bin/caido \
    && apt clean \
    && apt autoremove --purge -y wget \
    && rm -rf /var/lib/apt/lists/* 

RUN adduser --disabled-password $USER

USER ${USER}

WORKDIR /home/$USER

ENTRYPOINT ["caido"]