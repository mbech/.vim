" Color
colorscheme molokai 

" Activates filetype detection
filetype plugin indent on

" activates syntax highlighting among other things
syntax on

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" allows you to deal with multiple unsaved
" buffers simultaneously without resorting
" to misusing tabs
set hidden

" just hit backspace without this one and
" see for yourself
set backspace=indent,eol,start

" How to visually show tabs
set expandtab
set shiftwidth=2
set softtabstop=2

" Tabs are turned into equivalent number of spaces
set expandtab

" Show line numbers
set number

" Show line of commands
set showcmd

" horizontal highlighting at cursor
set cursorline

" tab complete for vim commands
set wildmenu

" Indicate matching parens when cursor is on one
set showmatch

" Search behavior
set incsearch
set hlsearch

" Set where all the swp files sit (so as not to clutter repository)
set dir=~/.vim-swp

" Pathogen plugin load
call pathogen#infect() 

" NERDtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif  "let's one quit vim if NERDtree is last window
