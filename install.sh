#!/bin/bash

checkgit(){
        if [ ! -f  /usr/bin/git ]
        then
                yum install git 1>/dev/null
        fi
}

checkgit
vimrc=~/.vimrc
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
mv ~/.vimrc ~/.vimrc.bak
cat >> $vimrc <<EOF
filetype off
syntax on
filetype plugin indent on
execute pathogen#infect('vim-sensible/{}', '~/.vim/bundle/{}')
execute pathogen#infect('python-mode/{}', '~/.vim/bundle/{}')
call pathogen#infect()
call pathogen#helptags()
set expandtab
set tabstop=4

EOF
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-sensible.git
git clone git://github.com/klen/python-mode.git


