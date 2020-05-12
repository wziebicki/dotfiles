set nocompatible

if &shell =~# 'fish$'
  set shell=sh
endif


set langmenu=en_US
let $LANG = 'en_US'

call plug#begin('~/.local/share/nvim/plugged')

Plug 'shougo/deoplete.nvim'
Plug 'zchee/deoplete-docker'
Plug 'SirVer/ultisnips'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'flazz/vim-colorschemes'
Plug 'easymotion/vim-easymotion'
Plug 'w0rp/ale'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'junegunn/goyo.vim'
Plug 'vimwiki/vimwiki'
call plug#end()

filetype plugin indent on

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

" Tabstops are 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set nowrap

" Turn on line numbers, Relative and standard numbers make hybrid line nubmers
set number
set relativenumber
set hidden

set mouse=a

" Printing options
set printoptions=header:0,duplex:long,paper:letter

" set the search scan to wrap lines
set wrapscan

" I'm happy to type the case of things.  I tried the ignorecase, smartcase
" thing but it just wasn't working out for me
set noignorecase

" Make command line two lines high
set ch=2

" set visual bell -- i hate that damned beeping
set vb
set t_vb=

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2
" Make the 'cw' and like commands put a $ at the end instead of just deleting
" " the text and replacing it
set cpoptions=ces$

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2
if has('statusline')
  set statusline=%t\  "tail of the filename
  set statusline+=%{&ff} "file format
  set statusline+=%h "help file flag
  set statusline+=%m "modified flag
  set statusline+=%r "read only flag
  set statusline+=%y "filetype
  set statusline+=%c, "cursor column
  set statusline+=%l/%L "cursor line/total lines
  set statusline+=\ %P "percent through file
endif

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Don't update the display while executing macros
set lazyredraw

" Don't show the current command in the lower right corner.  In OSX, if this
" is set and lazyredraw is set then it's slow as molasses, so we unset this
set showcmd

" Show the current mode
set showmode

" Switch on syntax highlighting.
syntax on

" Allow the cursor to go in to "invalid" places
set virtualedit=all

" Make the command-line completion better
set wildmenu

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" Automatically read a file that has changed on disk
set autoread

" Types of files to ignore when autocompleting things
set wildignore+=*.o,*.class,*.git,*.svn

" Various characters are "wider" than normal fixed width characters, but the
" default setting of ambiwidth (single) squeezes them into "normal" width,
" which sucks.  Setting it to double makes it awesome.
set ambiwidth=double

" OK, so I'm gonna remove the VIM safety 
set nobackup
set nowritebackup
set noswapfile
set encoding=utf-8

" History of commands
set history=1000

set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

" System default for mappings is now the "," character
let mapleader = ","

" Map : to : for faster save commands without shift
nnoremap ; :

" Switch to last edited buffer
nnoremap <bs> <c-^>

" Faster window movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap n nzz
nnoremap N Nzz

set splitbelow
set splitright

"set termguicolors
colorscheme iceberg

" Util snips
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsListSnippets = '<c-e>'
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsUsePythonVersion = 3

" Quicklist navigation
nnoremap <leader>a :cclose<CR>

"Edit my .vimrc file
nmap <Leader>ev :e $MYVIMRC<cr>
" Enable folding with the spacebar
nnoremap <space> za

"Clear the search highlights
nnoremap <leader><space> :nohlsearch<CR>

"---------Auto-Commands--------"
""Autmatically source the .vimrc file after editing
augroup autosourcing
  autocmd!
  autocmd BufWritePost init.vim source %
augroup END

aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end


" Ale
let g:ale_enabled = 1

" vimviki
let g:vimwiki_list = [{'path': '~/dev/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
au Filetype vimwiki setlocal shiftwidth=6 tabstop=6 noexpandtab

" Fzf bindings
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>
nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>
nmap <Leader>' :Marks<CR>
nmap <Leader>a :Ag<Space>
nmap <Leader>H :Helptags!<CR>
nmap <Leader>: :History:<CR>
nmap <Leader>/ :History/<CR>
nmap <Leader>M :Maps<CR>
nmap <Leader>s :Filetypes<CR>

" netrw
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
