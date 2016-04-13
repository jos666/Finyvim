#!/bin/bash

test -d ~/.vim &&mv ~/.vim ~/.vim.bak
test -f ~/.vimrc &&mv ~/.vimrc ~/.vimrc
cp -a .vim .vimrc ~/
