#!/bin/bash

dnf install -y \
	gnome-tweaks \
	libgnome \
	python3.8 \
	thunderbird \
	vim-X11 \
	zsh \
	util-linux-user \
	xclip \
	neofetch
dnf remove -y libreoffice*

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub \
	com.mattjakeman.ExtensionManager \
	com.visualstudio.code \
	md.obsidian.Obsidian \
	org.libreoffice.LibreOffice \
	org.telegram.desktop\
	com.discordapp.Discord
