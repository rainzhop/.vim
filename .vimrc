runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
Helptags

set nocompatible
syntax on

set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap "不自动换行
set hlsearch "高亮显示结果
set incsearch "在输入要搜索的文字时，vim会实时匹配
set backspace=indent,eol,start whichwrap+=<,>,[,]

set number
set ruler

execute pathogen#infect()
let g:SuperTabMappingForward="<tab>" 

colorscheme desert
