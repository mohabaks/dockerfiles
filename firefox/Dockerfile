# BUILD:
#   docker build -t local/firefox:latest --build-arg USER=$USER .
# RUN:
#   docker run -d --rm \
#              --cap-drop=ALL \
#              --cpuset-cpus 0 \
#              --device /dev/dri \
#              --memory 2gb \
#              --shm-size=1024m \
#              --dns "$LAN_DNS" \
#              -e DISPLAY=$DISPLAY \
#              -e GDK_DPI_SCALE \
#              -e GDK_SCALE \
#              -e PULSE_SERVER=unix:/run/user/$(id -u)/pulse/native \
#              -v /dev/shm:/dev/shm \
#              -v /etc/localtime:/etc/localtime:ro \
#              -v /var/run/dbus:/var/run/dbus \
#              -v /tmp/.X11-unix:/tmp/.X11-unix \
#              -v /run/user/$(id -u)/pulse:/run/user/$(id -u)/pulse \
#              local/firefox $@ 2>&1 >/dev/null
FROM archlinux:latest

LABEL maintainer "mohabaks <mohabaks@protonmail.com>"

ARG MIRROR="Server = https://archlinux.mirror.liquidtelecom.com/\$repo/os/\$arch" \
    USER

RUN echo -n "$MIRROR" > /etc/pacman.d/mirrorlist \
    && pacman -Syyu --noconfirm firefox \
           gstreamer-vaapi \
           hicolor-icon-theme \
           libva-intel-driver \
           libva-mesa-driver \
           libva-vdpau-driver \
           mesa-vdpau \
           noto-fonts-extra \
           pipewire-jack \
           pulseaudio \
           pulseaudio-alsa \
           alsa-plugins \
           mesa \
           noto-fonts-cjk \
           ttf-dejavu \
           ttf-inconsolata \
    && useradd -m ${USER}

USER $USER

WORKDIR /home/${USER}

ENTRYPOINT ["firefox"]