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

" Make all operations dealing with buffers also use clipboard
set clipboard=unnamed

" Search behavior
set incsearch
set hlsearch

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=2       "deepest fold is 2, methods fold, statements won't 
set nofoldenable        "dont fold by default
set foldlevel=1          
nnoremap <space> za
vnoremap <space> zf

" Set where all the swp files sit (so as not to clutter repository)
set dir=~/.vim-swp

" Pathogen plugin load
call pathogen#infect() 

" NERDtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif  "let's one quit vim if NERDtree is last window

" NERDtree-tabs toggle
map <C-n> :NERDTreeTabsToggle<CR> 

" Recognize md files as markdown for syntax highlighting
au BufRead,BufNewFile *.md set filetype=markdown

" Git commits, cap line at 72 chars
autocmd Filetype gitcommit setlocal spell textwidth=72
