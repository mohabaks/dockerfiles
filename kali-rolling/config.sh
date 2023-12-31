#!/bin/bash

# setup XDG_RUNTIME_DIR
if [[ ! -d /run/user/1000 ]];then
	sudo mkdir -p  /run/user/1000
	sudo chown ${KALI_USER}:${KALI_USER} /run/user/1000
	sudo chmod 0700 /run/user/1000
fi

# changing permission for copied files
sudo chown ${KALI_USER}:${KALI_USER} /home/${KALI_USER}/.zsh*
sudo chown ${KALI_USER}:${KALI_USER} /home/${KALI_USER}/.tmux.conf
sudo chown ${KALI_USER}:${KALI_USER} /home/${KALI_USER}/.func

#sudo apt autoremove -y --purge ghidra burpsuite