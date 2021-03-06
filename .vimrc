" Some basics:
set nocompatible
set backspace=indent,eol,start
let mapleader = ","
filetype plugin indent on
syntax on    
set encoding=utf-8

" Below 2 lines sets hybrid line numbers 
set number    
set relativenumber
    
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" search as you go
set incsearch       " search as characters are entered
set hlsearch        " highlights matches
" turn off search highlight
nnoremap <silent> <LEADER><space> :nohlsearch<CR>

" vimtex setting
let g:vimtex_view_general_viewer = 'mupdf'

" vim clipboard (requires vim-gtk)
noremap <LEADER>Y "*y
noremap <LEADER>P "*p  
noremap <LEADER>y "+y  
noremap <LEADER>p "+p 

" python execution shortcut
vnoremap <silent> <LEADER>[ :w ! python3<CR>
nnoremap <silent> <LEADER>[ :w ! python3<CR>

" guide replace
inoremap <LEADER><LEADER> <Esc>/<++><Enter>"_c4l
vnoremap <LEADER><LEADER> <Esc>/<++><Enter>"_c4l
map <LEADER><LEADER> <Esc>/<++><Enter>"_c4l

" disable arrow keys

nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>

""""""" latex bindings

"" Make sure to be in the directory as the file!!
"Compiling using pdflatex
autocmd FileType tex nnoremap <buffer> <LEADER>C :! pdflatex %<CR><CR>
"Loading pdf(take file extension and replace with pdf)
autocmd FileType tex nnoremap <buffer> <LEADER>R :! mupdf $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR>


"" timestamp

nmap <silent> <LEADER>t i<C-R>=strftime("%d-%m-%Y %a %H:%M:%S")<CR><Esc>
imap <silent> <LEADER>t <C-R>=strftime("%d-%m-%Y %a %H:%M:%S")<CR>
