"VIMIDE vimrc basic settings

set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'



" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'tomtom/tcomment_vim.git'
Bundle 'Lokaltog/powerline.git'
Bundle 'Rykka/riv.vim.git'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'fatih/vim-go.git'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'justinmk/vim-syntax-extra.git'
Bundle 'kchmck/vim-coffee-script.git'
"Bundle 'elzr/vim-json.git'
Bundle 'dgryski/vim-godef'
Bundle 'Blackrush/vim-gocode'
Bundle 'majutsushi/tagbar'
Bundle 'leafgarland/typescript-vim'
Bundle 'peitalin/vim-jsx-typescript'
Bundle 'uarun/vim-protobuf'
Bundle 'bradfitz/goimports'

call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set fileformat=unix
set guifont=Courier:h12
set linespace=4
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set noswapfile
set backspace=start,indent,eol
set numberwidth=4
set autoindent
set smartindent
set nobackup
set writebackup
set hlsearch 
set incsearch
set autoread
set nu
set ruler
syntax enable

syntax on

set wildignore+=.git,.svn,*.o,*.ob­j,tmp,*swp,*.log

map <C-j> <C-W>j 
map <C-k> <C-W>k 
map <C-h> <C-W>h 
map <C-l> <C-W>l 

au! BufRead,BufNewFile *.js set syntax=jquery
au! BufRead,BufNewFile *.less set syntax=css
au! BufRead,BufNewFile *.tpl set syntax=html
au! BufRead,BufNewFile *.sah set syntax=javascript
au! BufRead,BufNewFile *.is set syntax=php

au! BufRead,BufNewFile *.js set filetype=javascript
au! BufRead,BufNewFile *.is set filetype=php
au! BufRead,BufNewFile *.less set filetype=css
au! BufRead,BufNewFile *.tpl set filetype=html
au! BufNewFile,BufRead *.t2t set ft=txt2tags
au! BufRead,BufNewFile *.sah set filetype=javascript

" light blues
hi xmlTagName guifg=#59ACE5
hi xmlTag guifg=#59ACE5

" dark blues
hi xmlEndTag guifg=#2974a1
autocmd! bufwritepost .vimrc source ~/.vimrc

".vimrc
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
autocmd BufWritePre *.go :GoImports
autocmd BufWritePre *.go :Fmt
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.jsx
autocmd BufWritePost,FileWritePost *.go execute 'GoLint'

let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }
let g:jsx_ext_required = 0
let g:typescript_indent_disable = 1

