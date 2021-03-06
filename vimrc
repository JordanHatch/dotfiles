execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme badwolf

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set number
set cursorline
set showmatch

filetype indent on

set wildmenu

set incsearch
set hlsearch

nnoremap j gj
nnoremap k gk

set laststatus=2

map <C-n> :NERDTreeToggle<CR>

"   https://stackoverflow.com/questions/356126/how-can-you-automatically-remove-trailing-whitespace-in-vim

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
