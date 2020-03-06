""""""""""
"" Vim-PLug setup
let vimplug_exists=expand('~/.vim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Required:
call plug#begin(expand('~/.vim/plugged'))
"" Plug install packages
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"visual repersentation of git diff
Plug 'airblade/vim-gitgutter'
"Plug 'vim-scripts/grep.vim'
" get gvim colour schemes to work in terminal vim
Plug 'vim-scripts/CSApprox'
" sidebar that displays the ctags-generated tags of the current file, ordered by their scope
Plug 'majutsushi/tagbar'
"async linter, optionally lsp client
Plug 'dense-analysis/ale'
"versatile lsp client
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"alternative to following for spaces :set list lcs=tab:\|\ 
Plug 'Yggdroot/indentLine'
" update stuff installed by vim-bootstrap
Plug 'avelino/vim-bootstrap-updater'
" contains language packs, 
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif
let g:make = 'gmake'
if exists('make')
        let g:make = 'make'
endif   
Plug 'Shougo/vimproc.vim', {'do': g:make}

" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

" streamless vim-tmux split navigation
Plug 'christoomey/vim-tmux-navigator'

" Snippets
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Color
Plug 'tomasr/molokai'

"" languages
" c
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plug 'ludwig/split-manpage.vim'

" html
"Plug 'hail2u/vim-css3-syntax'
"preview colours
Plug 'gorodinskiy/vim-coloresque'
"updated haml n sass runtime files
"Plug 'tpope/vim-haml'
" expand abbreviations
Plug 'mattn/emmet-vim'

" javascript
"Plug 'jelera/vim-javascript-syntax'

" python
" autoomplete (overwriten by YCM)
"Plug 'davidhalter/jedi-vim'
"Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}

" markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
"Plug 'gabrielelana/vim-markdown'
Plug 'vim-pandoc/vim-pandoc-syntax'

"multi language autocomplete
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --java-completer --ts-completer' }

" notetaking
" Plug 'vimwiki/vimwiki'


"- /home/emera/.vim/plugged/dart-vim-plugin/
"- /home/emera/.vim/plugged/ultisnips/
"- /home/emera/.vim/plugged/vim-jekyll/

"" Include user's extra bundle
if filereadable(expand("~/.vimrc.local.bundles"))
  source ~/.vimrc.local.bundles
endif

call plug#end()

" Required:
filetype plugin indent on


