# Fedora configs
# Set-up
Clone the repository wherever you want (`~/Documents` is recommended).
```bash
cd configs
sudo ./install.sh

ln -sr ./vim/.vimrc ~/.vimrc
ln -sr ./vim/.vim ~/.vim

rm ~/.zshrc
ln -sr zsh/.zshrc ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

ln -sr ./.bin ~/.bin
```
Reboot for the changes to take effect.

The code above installs several applications, makes symbolic links to configs and *zsh* as default shell.

# Vim

Install `vimx` aka `vim` with enhancements (see [Vim - Fedora Project Wiki](https://fedoraproject.org/wiki/Vim))

# zsh

Install `zsh` shell and [oh-my-zsh](https://ohmyz.sh/).

```bash
sudo dnf install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Make it the *default shell*.

# tmux

- Copy to system clipboard from copy-mode (`~/.tmux.conf.local` line 337): 

# Scripts

```
~/.bin/
```
