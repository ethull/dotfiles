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
" Plug install packages
"" naviagte
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vifm/vifm.vim'
if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif
"sidebar that displays ctags-generated tags of the current file, ordered by their scope
"Plug 'majutsushi/tagbar'
"Plug 'vim-scripts/grep.vim'
"streamless vim-tmux split navigation, (doesnt work)
"Plug 'christoomey/vim-tmux-navigator'
"" appearance
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"get gvim colour schemes to work in terminal vim
Plug 'vim-scripts/CSApprox'
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
"color
"Plug 'tomasr/molokai'
"" git
Plug 'tpope/vim-fugitive'
"required by fugitive to :Gbrowse
Plug 'tpope/vim-rhubarb'
"visual repersentation of git diff
Plug 'airblade/vim-gitgutter'
"" programming util
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-commentary'
"lines show indentation, alternative to following for spaces :set list lcs=tab:\|\
Plug 'Yggdroot/indentLine'
"contains language packs, 
Plug 'sheerun/vim-polyglot'
"async linter, optionally lsp client
Plug 'dense-analysis/ale'
"python autocomplete, coc-python dependancy
"Plug 'davidhalter/jedi-vim'
"versatile lsp client
if (g:load_lsp)
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif
"multi language autocomplete
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --java-completer --ts-completer' }
""" snippets
" Plug 'SirVer/ultisnips'
"predefined snippets
Plug 'honza/vim-snippets'
""" languages
"""" c
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plug 'ludwig/split-manpage.vim'
"""" html
"Plug 'hail2u/vim-css3-syntax'
"preview colours
Plug 'gorodinskiy/vim-coloresque'
"updated haml n sass runtime files
"Plug 'tpope/vim-haml'
" expand abbreviations
Plug 'mattn/emmet-vim'
"""" javascript
"Plug 'jelera/vim-javascript-syntax'
"""" python
" autoomplete (overwriten by YCM)
"Plug 'davidhalter/jedi-vim'
"Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
"""" markdown
"Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
"Plug 'gabrielelana/vim-markdown'
Plug 'vim-pandoc/vim-pandoc-syntax'
"""" latex
Plug 'lervag/vimtex'
"Plug 'vim-latex/vim-latex'
"""" dart
"dart-vim-plugin/
"flutter...
""""ruby
"Plug 'parkr/vim-jekyll'

"" idk
let g:make = 'gmake'
if exists('make')
        let g:make = 'make'
endif   
"exe external cmds asyncronously
Plug 'Shougo/vimproc.vim', {'do': g:make}

"" extend native interface to unicode
Plug 'chrisbra/unicode.vim'

""" notetaking
" Plug 'vimwiki/vimwiki'

""" vim-session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

""" removed
" update stuff installed by vim-bootstrap
"Plug 'avelino/vim-bootstrap-updater'
"- /home/emera/.vim/plugged/ultisnips/

"" Include user's extra bundle
if filereadable(expand("~/.vimrc.local.bundles"))
  source ~/.vimrc.local.bundles
endif

call plug#end()

" Required:
filetype plugin indent on
