if ! exists('g:loaded_grep')
    finish
endif

" grep.vim
let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules'

" grep.vim
nnoremap <silent> <leader>f :Rgrep<CR>


