if ! exists('g:loaded_ale')
    finish
endif

let g:ale_linters = {}
let g:ale_fixers = {}
" some linters provided by lsp servers, but they're slow
let g:ale_linters_explicit = 1
:call extend(g:ale_linters, {
    \'python': ['flake8'],
    \'javascript': ['eslint'],
    \'jsx': ['eslint'],
    \'java': ['checkstyle'],
    \'c': ['clang','gcc']
    \})
" can use eslint or prettier for web languages
:call extend(g:ale_fixers, {
    \'javascript': ['eslint'],
    \'typescript': ['prettier'],
    \'css': ['prettier'],      
    \'scss': ['prettier'], 
    \'html': ['prettier']
    \})
let g:ale_fix_on_save = 1


