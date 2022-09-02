syntax on
filetype off  " required  for vundle
set nocompatible " explicitly get out of vi-compatible mode

" =============== Vundle Initialization ===============
" This loads all the plugins specified in ~/.vim/vundles.vim
" BOY, YADR really fucked me on this one
" Use Vundle plugin to manage all other plugins
 if filereadable(expand("~/.vim/vundles.vim"))
   source ~/.vim/vundles.vim
 endif
 au BufNewFile,BufRead *.vundle set filetype=vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'ctrlpvim/ctrlp.vim.git'
"Plugin 'tpope/vim-commentary'
"Plugin 'tpope/vim-fugitive'
" Plugin 'tpope/vim-surround'
"Plugin 'bling/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'scrooloose/syntastic'
"Plugin 'ervandew/supertab'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'christoomey/vim-tmux-navigator'

" All of your Plugins must be added before the following line
"call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" colorscheme jellybeans
set termguicolors
"colorscheme dracula

let mapleader=","
" shortcuts for deleting, saving, etc
nnoremap <leader>q :qa!<CR>
nnoremap <leader>w :w!<CR>
" fix whitespace
nnoremap <leader>fw :FixWhitespace<CR>

" hide search highlighting
nnoremap <leader>l :nohl<CR>
" keep visual selection after indent
vnoremap > >gv
vnoremap < <gv

set t_Co=256
set laststatus=2
set encoding=utf-8

set noexrc " don't use local version of .(g)vimrc, .exrc
set background=dark " we plan to use a dark background
" set background=light " we plan to use a dark background
set fenc=utf-8 " UTF-8
set cpoptions=aABceFsmq
set hls "highlighted search results"
set backspace=indent,eol,start " make backspace a more flexible
"set backup " make backup files
set clipboard=unnamedplus " share X clipboard
set fileformats=unix,dos,mac " support all three, in this order
set hidden " you can change buffers without saving
set iskeyword+=_,$,@,%,# " none of these are word dividers
set mouse=a " use mouse everywhere
set noerrorbells " don't make noise
set number " turn on line numbers
set numberwidth=4 " We are good up to 99999 lines
set scrolloff=20 " Keep 10 lines (top/bottom) for scope
set showcmd " show the command being typed
set ruler " Always show current positions along the bottom
set statusline=%F%m%r%h%w\ 
"set statusline+=%{fugitive#statusline()}\    
set statusline+=[%{strlen(&fenc)?&fenc:&enc}]
set statusline+=\ [line\ %l\/%L] 
set formatoptions=rq " Automatically insert comment leader on return, and let gq format comments
set ignorecase " case insensitive by default
set nowrap " do not wrap line
set shiftwidth=4 " auto-indent amount when using cindent, >>, << and stuff like that
set softtabstop=4 " when hitting tab or backspace, how many spaces should a tab be (see expandtab)
set expandtab " no real tabs please!
set smarttab
" nvim compat
"if !has('nvim')
"    set ttymouse=xterm2 " makes it work in everything
"endif
set wrap " wraps at window edge by default
set linebreak " wraps at word breaks
" set paste " aids in pasting (no auto-indent crap)
set pastetoggle=<F2>
let g:netrw_liststyle=3  " better file explorer display

" from fb admin_scripts
" set nohlsearch " don't persist highlights
set incsearch       " search with typeahead
set noerrorbells      " no bells in terminal
" set modelines=0       " modelines are bad for your health

" set colorcolumn=80 " absolute columns to highlight 

" stuff for better window splitting
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:netrw_list_hide= '.*\.swp$,.*\.pyc$'

" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'c'

" nice powerline fonts in airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_theme='dracula'

" ignores for ctrlP
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)|env$',
  \ 'file': '\v\.(exe|so|dll|pyc)$',
  \ }


" Vim - Fugitive shortcuts
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
" same bindings for merging diffs as in normal mode
xnoremap dp :diffput<cr>
xnoremap do :diffget<cr>

" easy escape insert mode
inoremap <special> kj <Esc>

" terminal-specific magic
let s:iterm   = exists('$ITERM_PROFILE') || exists('$ITERM_SESSION_ID') || filereadable(expand("~/.vim/.assume-iterm"))
let s:screen  = &term =~ 'screen'
let s:tmux    = exists('$TMUX')
let s:xterm   = &term =~ 'xterm'

" bracketed paste mode magic
if s:screen || s:xterm
  function! s:BeginXTermPaste(ret)
    set paste
    return a:ret
  endfunction

  " enable bracketed paste mode on entering Vim
  let &t_ti .= "\e[?2004h"

  " disable bracketed paste mode on leaving Vim
  let &t_te = "\e[?2004l" . &t_te

  set pastetoggle=<Esc>[201~
  inoremap <expr> <Esc>[200~ <SID>BeginXTermPaste("")
  nnoremap <expr> <Esc>[200~ <SID>BeginXTermPaste("i")
  vnoremap <expr> <Esc>[200~ <SID>BeginXTermPaste("c")
  cnoremap <Esc>[200~ <nop>
  cnoremap <Esc>[201~ <nop>
endif

" fix highlight color w/ light bg
" hi Visual term=reverse cterm=reverse guibg=LightGrey

" hide search highlighting
nnoremap <leader>l :nohl<CR>

" keep visual selection after indent
vnoremap > >gv
vnoremap < <gv

nnoremap <leader>w :w!<CR>

" https://github.com/kovidgoyal/kitty/issues/108
" vim hardcodes background color erase even if the terminfo file does
" not contain bce (not to mention that libvte based terminals
" incorrectly contain bce in their terminfo files). This causes
" incorrect background rendering when using a color theme with a
" background color.
" let &t_ut=''

" 2-space indents for markdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
autocmd FileType markdown setlocal tabstop=2 shiftwidth=2 softtabstop=2

" fix background colors
let &t_ut=''
