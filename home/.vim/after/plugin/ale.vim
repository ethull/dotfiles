"if ! exists('g:loaded_ale')
"    finish
"endif

let g:ale_linters = {}
let g:ale_fixers = {}
" some linters provided by lsp servers, but may be slower
" linters replaced by lsp: javac 
let g:ale_linters_explicit = 1
:call extend(g:ale_linters, {
    \'python': ['pyflakes'],
    \'javascript': ['eslint', 'standard'],
    \'jsx': ['eslint'],
    \'java': ['checkstyle'],
    \'c': ['clang','gcc'],
    \'markdown': ['markdownlint'],
    \'vimwiki': ['markdownlint'],
    \'html': ['htmlhint'],
    \'tex': ['chktex', 'lacheck']
    \})
" can use eslint or prettier for web languages
:call extend(g:ale_fixers, {
    \'python': ['black'],
    \'javascript': ['eslint'],
    \'typescript': ['prettier'],
    \'css': ['prettier'],      
    \'scss': ['prettier'], 
    \'html': ['prettier']
    \})
let g:ale_fix_on_save = 1
