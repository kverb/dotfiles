call plug#begin(stdpath('data') . 'vimplug')
 " Plugin Section
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 " Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'tpope/vim-fugitive'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'airblade/vim-gitgutter'
 " Plug 'christoomey/vim-tmux-navigator'
 Plug 'arcticicestudio/nord-vim'
call plug#end()

" easy escape insert mode
inoremap <special> kj <Esc>

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
 " hide search highlighting
nnoremap <leader>l :nohl<CR>
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=89                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
"

" set leader key to ,
let g:mapleader=" "

" easy save and close
nnoremap <leader>w :w!<CR>
nnoremap <leader>W :wq!<CR>
nnoremap <leader>q :q!<CR>

nnoremap <leader>fw :FixWhitespace<CR>

" keep visual selection after indent
vnoremap > >gv
vnoremap < <gv


" open new split panes to right and below
set splitright
set splitbelow
" better split handling
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


if (has("termguicolors"))
 set termguicolors
 endif
 syntax enable

colorscheme nord  " also try: `dracula`

" nice powerline fonts in airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_theme='dracula'

" 2-space indents for markdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
autocmd FileType markdown setlocal tabstop=2 shiftwidth=2 softtabstop=2

" nerdtree 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
