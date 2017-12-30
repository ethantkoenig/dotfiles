set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'fatih/vim-go'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'

call vundle#end()            " required for Vundle
filetype plugin indent on    " required for Vundle

set number
set tabstop=2
set shiftwidth=2
set expandtab
set autoread
set completeopt=noinsert,menuone
set noeb vb t_vb=
syntax on
syntax sync fromstart

:nmap . :MBEbn<CR>
:nmap , :MBEbp<CR>
:nmap <C-s> :on<CR>:w<CR>
set wildmode=longest,list,full
set wildmenu

let g:UltiSnipsExpandTrigger = "<M-.>"
let g:miniBufExplBuffersNeeded = 0

let g:ctrlp_regexp = 1

let g:go_def_mode = 'godef'

let g:syntastic_auto_loc_list = 1
let g:syntastic_go_checkers = ['gotype']

" source local vim scripts below
