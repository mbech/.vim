" Color
colorscheme molokai 

" built-in indent/highlighting
filetype plugin indent on
syntax on

" Make it obvious where 80 characters is
" visual wrapping only
set textwidth=0 wrapmargin=0
set wrap
set colorcolumn=80

" allows you to deal with multiple unsaved
" buffers simultaneously without resorting
" to misusing tabs
set hidden

" just hit backspace without this one and
" see for yourself
set backspace=indent,eol,start

" Set spacing
set expandtab
set shiftwidth=2
set softtabstop=2

autocmd Filetype javascript setlocal ts=4 sw=4 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab
au BufNewFile,BufRead *.clj* set filetype=clojure

" Tabs are turned into equivalent number of spaces
set expandtab

" Show line number on current line, relative on others
set relativenumber
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

" Set where all the swp files sit (so as not to clutter repository)
set dir=~/.vim-swp

" Pathogen plugin load
call pathogen#infect() 

" NERDtree
" Quit vim if NERDtree is last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" NERDtree-tabs toggle
map <C-n> :NERDTreeTabsToggle<CR> 

" NERDtree, show hidden files by default
let NERDTreeShowHidden=1

" Keep NERDTree open on first file open
let NERDTreeQuitOnOpen=0

" Start NERDTree on Vim start
autocmd VimEnter * NERDTree

" Recognize md files as markdown for syntax highlighting
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.vfp set filetype=visualforce

" Git commits, cap line at 72 chars
autocmd Filetype gitcommit setlocal spell textwidth=72

" Airline settings
let g:airline_powerline_fonts = 1 

" rainbow parens
let g:rainbow_active = 1
