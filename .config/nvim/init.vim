set nocompatible

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
Plug 'flazz/vim-colorschemes'
" A git wrapper.
Plug 'tpope/vim-fugitive'
Plug 'ayu-theme/ayu-vim'
Plug 'w0rp/ale'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()} }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'mhinz/vim-startify'
Plug 'junegunn/goyo.vim'
Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Navigate and manipulate files in a tree view.
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern-mapping-mark-children.vim'
Plug 'lambdalisue/nerdfont.vim'
" Automatically show Vim's complete menu while typing.
Plug 'vim-scripts/AutoComplPop'
" Run a diff on 2 directories.
Plug 'will133/vim-dirdiff'
" Run a diff on 2 blocks of text.
Plug 'AndrewRadev/linediff.vim'
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
"if has('statusline')
"  set statusline=%t\  "tail of the filename
"  set statusline+=%{&ff} "file format
"  set statusline+=%h "help file flag
"  set statusline+=%m "modified flag
"  set statusline+=%r "read only flag
"  set statusline+=%y "filetype
"  set statusline+=%c, "cursor column
"  set statusline+=%l/%L "cursor line/total lines
"  set statusline+=\ %P "percent through file
"endif

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
nnoremap <leader>1 :bp<CR>
nnoremap <leader>2 :bn<CR>

" Faster window movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Below h,l with conflict with fzf
" nnoremap <leader>h :wincmd h<CR>
" nnoremap <leader>j :wincmd j<CR>
" nnoremap <leader>k :wincmd k<CR>
" nnoremap <leader>l :wincmd l<CR>

nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" Always show search results in center of the screen
nnoremap n nzz
nnoremap N Nzz

" Cycle through splits.
nnoremap <S-Tab> <C-w>w

set spelllang=en,pl

set splitbelow


if (has("termguicolors"))
  " https://github.com/vim/vim/issues/993#issuecomment-255651605
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu
let g:airline_theme='ayu_mirage'


" Util snips
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/ultisnips']
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsUsePythonVersion = 3

" Quicklist navigation
nnoremap <leader>a :cclose<CR>

"Edit my .vimrc file
nmap <Leader>ev :e $MYVIMRC<cr>

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=manual
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

" highlight trailing whitespaces
match ErrorMsg '\s\+$'
" remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" Ale
let g:ale_enabled = 1


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

let g:fzf_layout = { 'window': { 'width': 0.8, 'height':0.6 } }
let g:fzf_preview_window = ''

set complete+=kspell
set completeopt=menuone,longest


" Mappings to make Vim more friendly towards presenting slides.
autocmd BufNewFile,BufRead *.vpm call SetVimPresentationMode()
function SetVimPresentationMode()
  nnoremap <buffer> <Right> :n<CR>
  nnoremap <buffer> <Left> :N<CR>

  if !exists('#goyo')
    Goyo
  endif
endfunction

" .............................................................................
" lambdalisue/fern.vim
" .............................................................................

" Custom settings and mappings.
let g:fern#disable_default_mappings = 1
let g:fern#renderer = "nerdfont"
noremap <silent> <Leader>pv :Fern . -drawer -reveal=% -toggle -width=35<CR><C-w>=

function! s:init_fern() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-open-expand-collapse)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open:select)",
        \   "\<Plug>(fern-action-expand)",
        \   "\<Plug>(fern-action-collapse)",
        \ )
  nmap <buffer> o <Plug>(fern-action-expand)
  nmap <buffer> O <Plug>(fern-action-collapse)
  nmap <buffer> <2-LeftMouse> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> n <Plug>(fern-action-new-path)
  nmap <buffer> d <Plug>(fern-action-remove)
  nmap <buffer> m <Plug>(fern-action-move)
  nmap <buffer> M <Plug>(fern-action-rename)
  nmap <buffer> h <Plug>(fern-action-hidden-toggle)
  nmap <buffer> r <Plug>(fern-action-reload)
  nmap <buffer> k <Plug>(fern-action-mark:toggle)
  nmap <buffer> K <Plug>(fern-action-mark-children:leaf)
  nmap <buffer> b <Plug>(fern-action-open:split)
  nmap <buffer> v <Plug>(fern-action-open:vsplit)
  nmap <buffer><nowait> < <Plug>(fern-action-leave)
  nmap <buffer><nowait> > <Plug>(fern-action-enter)
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END

" vimviki
let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
au Filetype vimwiki setlocal shiftwidth=6 tabstop=6 noexpandtab

" fugitive
nmap <leader>gs :G<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>

" fzf-checkout
nnoremap <leader>gc :GBranches<CR>
