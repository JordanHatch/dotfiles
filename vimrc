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

autocmd vimenter * NERDTree
