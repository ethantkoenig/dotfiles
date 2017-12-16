set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'fatih/vim-go'

call vundle#end()            " required for Vundle
filetype plugin indent on    " required for Vundle

set number
set tabstop=2
set shiftwidth=2
set expandtab
syntax on
syntax sync fromstart
imap Super_L <Esc>

nmap . gt
nmap , gT
