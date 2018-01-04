set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'ap/vim-buftabline'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'NLKNguyen/papercolor-theme'

call vundle#end()            " required for Vundle
filetype plugin indent on    " required for Vundle

set autoread
set completeopt=noinsert,menuone
set expandtab
set noerrorbells
set number
set shiftwidth=2
set tabstop=2
set wildmenu
set wildmode=longest,list,full

syntax on
syntax sync fromstart

nmap . :bn<CR>
nmap , :bp<CR>
nmap [ :bd<CR>
nmap <M-/> :NERDTreeToggle<CR>

let g:buftabline_indicators = 1
let g:ctrlp_regexp = 1
let g:go_def_mode = 'godef'
let g:syntastic_auto_loc_list = 1
let g:syntastic_go_checkers = ['gotype']
let g:UltiSnipsExpandTrigger = "<M-.>"


" source local vim scripts below
if filereadable(expand('~/.local.vim'))
  source ~/.local.vim
endif
