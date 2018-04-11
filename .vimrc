colorscheme elflord
filetype on
syntax on
au BufNewFile,BufRead *.sv set filetype=verilog
au BufNewFile,BufRead *.cpp.* set filetype=cpp

set fileformats=unix
set guifont=Courier\ New:h8
set showmatch
set nowrap
set viminfo=
set autoindent
set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
set ignorecase
set smartcase
set ruler
set number
set shiftwidth=3
set tabstop=3
set expandtab
set mouse=a
set autoread
set backspace=indent,eol,start
set guioptions+=b
vmap <silent> // y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>

" F2 -> replace tabs with spaces and save
map <F2> :retab <CR>

" F3 -> repeat last command
map <F3> @: <CR>

" F4 -> remove all the whitespaces at the end of all lines and save
map <F4> :%s/\s\+$//g <CR>

" :Clear -> clear buffer selection
command Clear let @/="" 

" :Clearfile -> Clear the file but don't save
command Clearfile :%d

" :ClearUndo -> Clears the undo tree
command ClearUndo :set undoreload=0 | edit
