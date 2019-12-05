" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast

" Fix backspace indent
set backspace=indent,eol,start
"Stop delay when changing back to normal mode
set timeoutlen=1000 ttimeoutlen=0

" Tabs. May be overridden by autocmd rules
set tabstop=4
" change max amount of BS that can be inserted, set to -1 tp cp shiftwidth
set softtabstop=4
set shiftwidth=4
set expandtab

" Splits
" natural split opening
set splitbelow
set splitright


" Map leader to ,
let mapleader=','
 
" Enable hidden buffers
set hidden

"" options for coc.nvim (lsp's)
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set fileformats=unix,dos,mac

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif


"" Visual Settings
syntax on
set ruler
set number

let no_buffers_menu=1
silent! colorscheme zenburn

" disable match brackets (to stop annoying bracket jumping), instead use %
let g:loaded_matchparen=1

set mousemodel=popup
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10


if $COLORTERM == 'gnome-terminal'
set term=gnome-256color
else
if $TERM == 'xterm'
  set term=xterm-256color
endif
endif  

if &term =~ '256color'
  set t_ut=
endif

" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

" Status bar
set laststatus=2

" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\


