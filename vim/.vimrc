set tabstop=4
set shiftwidth=4
set noexpandtab

set hlsearch
set ruler

nmap <silent> <F2> :set number! <CR>
nmap <silent> <F3> :set list! <CR>
nmap <silent> <F4> :set hlsearch! <CR>

cnoreabbrev W w ! sudo tee %

execute pathogen#infect()

syntax on
filetype plugin on
