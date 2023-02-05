dnf install -y gnome-tweaks python3.8 thunderbird vim-X11 zsh util-linux-user xclip
dnf remove -y libreoffice*

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub com.mattjakeman.ExtensionManager flathub com.visualstudio.code md.obsidian.Obsidian org.libreoffice.LibreOffice org.telegram.desktop flathub com.discordapp.Discord

ln -sr ./vim/.vimrc ~/.vimrc
ln -sr ./vim/.vim ~/.vim

rm ~/.zshrc
ln -sr zsh/.zshrc ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -sr ./.bin ~/.bin
