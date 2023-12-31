#!/bin/sh

if [ "$1" = "cli" ];then
        shift;
        exec /usr/share/jadx/bin/jadx "$@"
else
        exec /usr/share/jadx/bin/jadx-gui "$@"
fi