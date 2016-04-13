set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
filetype plugin on
filetype plugin indent on
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
augroup END
"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'saltstack/salt-vim'
"Bundle 'tpope/vim-sensible'
"Bundle 'tpope/vim-surround'
"Bundle 'tpope/vim-repeat'
"Bundle 'tpope/vim-git'
"Bundle 'tsaleh/vim-matchit'
"Bundle 'tomasr/molokai'

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2
map <F2> :NERDTreeToggle<CR>

"Python-mode
"
" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)

let g:pymode_rope = 0
"
"let g:pymode_rope_autocomplete_map = '<C-Space>'
"" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"
""lInting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
"" Auto check on save
let g:pymode_lint_write = 1
"
"" Support virtualenv
let g:pymode_virtualenv = 1
"
"" Enable breakpoints plugin
"let g:pymode_breakpoint = 1
"let g:pymode_breakpoint_key = '<leader>b'
"
"" syntax highlighting
"let g:pymode_syntax = 1
"let g:pymode_syntax_all = 1
"let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"let g:pymode_syntax_highlight_self = g:pymode_syntax_all
"let g:pymode_syntax_builtin_objs = g:pymode_syntax_all
"let g:pymode_syntax_space_errors = g:pymode_syntax_all
"let g:pymode_folding = 1
syntax  on
set nocompatible
set backspace=indent,eol,start
set ts=4
set expandtab
syntax on
set nocompatible
let g:sls_use_jinja_syntax = 1
set ft=yaml
