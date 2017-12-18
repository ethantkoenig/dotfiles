set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'

call vundle#end()            " required for Vundle
filetype plugin indent on    " required for Vundle

set number
set tabstop=2
set shiftwidth=2
set expandtab
set autoread
set completeopt+=noinsert,menuone
set noeb vb t_vb=
syntax on
syntax sync fromstart

autocmd FileType go inoremap a a<C-x><C-o>
autocmd FileType go inoremap b b<C-x><C-o>
autocmd FileType go inoremap c c<C-x><C-o>
autocmd FileType go inoremap d d<C-x><C-o>
autocmd FileType go inoremap e e<C-x><C-o>
autocmd FileType go inoremap f f<C-x><C-o>
autocmd FileType go inoremap g g<C-x><C-o>
autocmd FileType go inoremap h h<C-x><C-o>
autocmd FileType go inoremap i i<C-x><C-o>
autocmd FileType go inoremap j j<C-x><C-o>
autocmd FileType go inoremap k k<C-x><C-o>
autocmd FileType go inoremap l l<C-x><C-o>
autocmd FileType go inoremap m m<C-x><C-o>
autocmd FileType go inoremap n n<C-x><C-o>
autocmd FileType go inoremap o o<C-x><C-o>
autocmd FileType go inoremap p p<C-x><C-o>
autocmd FileType go inoremap q q<C-x><C-o>
autocmd FileType go inoremap r r<C-x><C-o>
autocmd FileType go inoremap s s<C-x><C-o>
autocmd FileType go inoremap t t<C-x><C-o>
autocmd FileType go inoremap u u<C-x><C-o>
autocmd FileType go inoremap v v<C-x><C-o>
autocmd FileType go inoremap w w<C-x><C-o>
autocmd FileType go inoremap x x<C-x><C-o>
autocmd FileType go inoremap y y<C-x><C-o>
autocmd FileType go inoremap z z<C-x><C-o>

nmap . gt
nmap , gT
nmap <M-,> :tabm -1<CR>
nmap <M-.> :tabm +1<CR>

let g:UltiSnipsExpandTrigger = "<M-.>"
