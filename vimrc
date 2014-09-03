execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible
filetype off
if has("unix")
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
else 
    set rtp+=~/vimfiles/bundle/vundle/
    call vundle#rc('$HOME/vimfiles/bundle/')
endif
Bundle 'gmarik/vund'
Bundle 'plasticbo/vim-markdown' "optional
Bundle 'AutoComplPop' "optional
filetype on