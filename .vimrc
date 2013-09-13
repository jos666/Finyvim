execute pathogen#infect('bundle/{}', '~/.vim/bundle/{}')
execute pathogen#infect('python-mode/{}', '~/.vim/bundle/{}')
" Pathogen load
filetype off
"
call pathogen#infect()
call pathogen#helptags()
"
filetype plugin indent on
syntax on
