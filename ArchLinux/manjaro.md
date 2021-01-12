# Manjaro configuration

## ArchLinux dotFiles

Project that mantains aligned all my configuration files.

## Neovim

Primary file is **~/.config/nvim/init.vim**

### Installation

> pacman -S neovim

### Configuration

**Plugin Manager**: vim-plug 
- [guide](https://www.youtube.com/watch?v=zhu1zFsD0t4)

### Misc

Many plugins may require python3

- add let g:python3_host_prog = '/usr/bin/python3' to init.vim
- pip3 install pynvim --user

## oh-my-zsh

Primary file is **~/.zshrc**

### Installation

This video explain all to start using zsh and the installation of oh-my-zsh.

- [guide](https://www.youtube.com/watch?v=4KBuPCeF9Gc)

### Configuration

- **Plugin Manager**:  antigen
 [guide](https://levelup.gitconnected.com/zsh-antigen-oh-my-zsh-a-beautiful-powerful-robust-shell-ca5873821671)

 >yay -S antigen
2wsxZAQ!
 Primary file is **~/.antigenrc**