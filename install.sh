#!/bin/bash

# Install applications
sudo dnf install -y \
	gnome-tweaks \
	libgnome \
	python3.8 \
	thunderbird \
	vim-X11 \
	zsh \
	util-linux-user \
	xclip \
	neofetch \
	tmux \

sudo dnf remove -y libreoffice*

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo flatpak install -y flathub \
	com.mattjakeman.ExtensionManager \
	com.visualstudio.code \
	md.obsidian.Obsidian \
	org.libreoffice.LibreOffice \
	org.telegram.desktop \
	com.discordapp.Discord \

# Create symlinks to Vim config and files
ln -srf ./vim/.vimrc ~/
ln -srf ./vim/.vim ~/

# Create symlink to zsh config
ln -srf zsh/.zshrc ~/
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Make zsh the default shell
chsh -s $(which zsh)

# Create symlinks to tmux config and files
git clone https://github.com/gpakosz/.tmux.git ~/.tmux
ln -sr  ~/.tmux/.tmux.conf ~/
ln -sr ./.tmux.conf.local ~/

# Create symlink to scripts (already on $PATH in the zsh config)
ln -sr ./.bin ~/
