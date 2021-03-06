This is my preferred VIM configuration, and instructions on how to setup.

## Installation:

```sh
$ git clone git://github.com/guxlightyear/vimrc.git ~/.vim
$ ~/.vim/setup.sh

# To make fzf work, also needs to be installed
$ brew update fzf
```

## Setup.sh
The setup.sh script will do the following:
```sh
# Create symlinks to the key files
$ ln -s ~/.vim/vimrc ~/.vimrc
$ ln -s ~/.vim/gvimrc ~/.gvimrc
# Switch to the ~/.vim directory and fetch submodules:
$ cd ~/.vim
$ git submodule update --init
```
In order to upgrade all bundled plugins
```sh
$ cd ~/.vim
$ git submodule foreach git pull origin master
```

## To install new plugins use:
```sh
$ cd ~/.vim
$ git submodule add <module URL> bundle/<plugin name>
```

## Plugins installed so far
* Nerdtree: a file tree explorer. With my current settings it gets activated with the shortcut `<F2>`
* FZF: Fuzzy finder: similar to Eclipse <ctrl>+R. Type `F3` to activate
    - Also, don't fzf needs to be installed in the system: brew install fzf
* Lightline: Nice status line replacement. Activated by default
* MysticalTutor: My preferred colour scheme so far
* VimCompletesMe: Code completion
* vim-terraform: vim integration with terraform. Allows running :Terraform
* sensible: sensible default values by Tim Pope
* commentary: provides capability to comment code in multiple languages. Use `gc` + movement command to comment code out

## Credits
This repository was inspired by instructions in:
http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

vimrc settings inspired from:
https://github.com/dhinus/vimfiles

