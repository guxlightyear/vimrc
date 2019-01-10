This is my preferred VIM configuration, and instructions on how to setup.

## Installation:

```sh
$ git clone git://github.com/guxlightyear/vimrc.git ~/.vim
$ ~/.vim/setup.sh
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

## Plugins installed so far
* Nerdtree: a file tree explorer. With my current settings it gets activated with the shortcut <F2>
* FZF: Fuzzy finder: similar to Eclipse <ctrl>+R. Type ";" to activate
* Lightline: Nice status line replacement. Activated by default
* MysticalTutor: My preferred colour scheme so far

## Credits
This repository was inspired by instructions in:
http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

vimrc settings inspired from:
https://github.com/dhinus/vimfiles
