"" vim-plug setup
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

"" pkgs to installed
" Required:
call plug#begin(expand('~/.vim/plugged'))
""" navigation
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vifm/vifm.vim'
if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif
""" appearance
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"get gvim colour schemes to work in terminal vim
Plug 'vim-scripts/CSApprox'
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
""" dev tools
"""" multi-language specific features
""""" async linter, optionally basic lsp client
Plug 'dense-analysis/ale'
""""" versatile lsp client
if (g:load_lsp)
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif
""""" expand abbreviations
Plug 'mattn/emmet-vim'
""""" snippets
" Plug 'SirVer/ultisnips'
"predefined snippets
Plug 'honza/vim-snippets'
"""" ctags
"sidebar that displays ctags-generated tags of the current file, ordered by their scope
"Plug 'majutsushi/tagbar'
"""" git
Plug 'tpope/vim-fugitive'
"required by fugitive to :Gbrowse
Plug 'tpope/vim-rhubarb'
"visual repersentation of git diff
Plug 'airblade/vim-gitgutter'
"""" programming util
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-commentary'
"https://github.com/airblade/vim-rooter
"https://github.com/amiorin/vim-project
"""" lines show indentation, alternative to following for spaces :set list lcs=tab:\|\
Plug 'Yggdroot/indentLine'
"""" contains language packs
Plug 'sheerun/vim-polyglot'
"""" highlight colors with actual colour //preview colours
Plug 'gorodinskiy/vim-coloresque'
"""" lang specific
""""" markdown
"Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'iamcco/markdown-preview.nvim', {'do': { -> mkdp#util#install() }, 'for': 'md'}
"Plug 'gabrielelana/vim-markdown'
Plug 'vim-pandoc/vim-pandoc-syntax', {'for': 'md'}
""""" latex
Plug 'lervag/vimtex', {'for': ['tex', 'latex']}
""" vim-session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
""" other
Plug 'ludwig/split-manpage.vim'
"""" extend native interface to unicode
Plug 'chrisbra/unicode.vim'
"""" exe external cmds asyncronously
let g:make = 'gmake'
if exists('make')
        let g:make = 'make'
endif   
Plug 'Shougo/vimproc.vim', {'do': g:make}
"""" leader key prompt/guide
Plug 'liuchengxu/vim-which-key'
"Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

"" removed plugins
""" dont work
"streamless vim-tmux split navigation
"Plug 'christoomey/vim-tmux-navigator'
""" better alternative
"Plug 'vim-scripts/grep.vim' //oudated, use fzf :Rg
"python autocomplete, coc-python dependancy
"Plug 'davidhalter/jedi-vim'
"multi language autocomplete
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --java-completer --ts-completer' } //outdated, use lsps
"Plug 'vim-latex/vim-latex'

"Plug 'hail2u/vim-css3-syntax'
"Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
"Plug 'tpope/vim-haml'
"Plug 'jelera/vim-javascript-syntax'
"Plug 'davidhalter/jedi-vim'
"Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
""" not used
" update stuff installed by vim-bootstrap
"Plug 'avelino/vim-bootstrap-updater'
"Plug 'tomasr/molokai' //better custom colourscheme
"Plug 'vimwiki/vimwiki'
"Plug 'parkr/vim-jekyll'
"Plug 'dart-lang/dart-vim-plugin '

"" Include user's extra bundle
if filereadable(expand("~/.vimrc.local.bundles"))
  source ~/.vimrc.local.bundles
endif

call plug#end()

" Required:
filetype plugin indent on
