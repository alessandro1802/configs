# Vim

Install `vimx` aka `vim` with enhancements (see [Vim - Fedora Project Wiki](https://fedoraproject.org/wiki/Vim))

```bash
sudo dnf install vim-X11
```

```
~/.vimrc
~/.vim/
```



# zsh

Install `zsh` shell and [oh-my-zsh](https://ohmyz.sh/).

```bash
sudo dnf install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```
~/.zshrc
```



# tmux

- Copy to system clipboard from copy-mode (`~/.tmux.conf.local` line 337): 
  
  ```bash
  sudo dnf install xclip
  ```



# Scripts

```
~/.bin/
```
