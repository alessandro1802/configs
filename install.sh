dnf install -y gnome-tweaks python3.8 thunderbird vim-X11 zsh util-linux-user xclip
dnf remove -y libreoffice*

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub com.mattjakeman.ExtensionManager flathub com.visualstudio.code md.obsidian.Obsidian org.libreoffice.LibreOffice org.telegram.desktop flathub com.discordapp.Discord
