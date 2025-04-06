set paste
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set textwidth=100
set colorcolumn=+1
set cursorline

set number
set list
set hlsearch
set ruler

nmap <silent> <F2> :set number! <CR>
nmap <silent> <F3> :set list! <CR>
nmap <silent> <F4> :set hlsearch! <CR>
nmap <silent> <F5> :set cursorcolumn! <CR>

hi CursorColumn term=reverse ctermbg=1 guibg=LightRed
hi ColorColumn term=reverse ctermbg=3 guibg=Yellow

cnoreabbrev W w ! sudo tee %

execute pathogen#infect()

syntax on
"filetype plugin on

autocmd BufNewFile,BufRead *.tw set filetype=python
autocmd BufNewFile,BufRead *.cinc set filetype=python
autocmd BufNewFile,BufRead *.cconf set filetype=python
autocmd BufNewFile,BufRead *.thrift set filetype=python
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.java :%s/\s\+$//e
autocmd BufWritePost *.php ! hh_client
autocmd VimEnter * wincmd p
