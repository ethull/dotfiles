"if ! exists('g:loaded_ale')
"    finish
"endif

let g:ale_disable_lsp = 1

let g:ale_linters = {}
let g:ale_fixers = {}
" some linters provided by lsp servers, but may be slower
" linters replaced by lsp: javac 
let g:ale_linters_explicit = 1
" if you have custom plugins in a global eslint file, eslintv6 wont find them
let g:ale_javascript_eslint_options = '--resolve-plugins-relative-to /usr/local/lib/node_modules'

:call extend(g:ale_linters, {
    \'python': ['pyflakes'],
    \'javascript': ['eslint'],
    \'jsx': ['eslint'],
    \'java': ['javac','checkstyle'],
    \'c': ['clang','gcc'],
    \'vimwiki': ['markdownlint'],
    \'html': ['htmlhint'],
    \'tex': ['chktex', 'lacheck'],
    \'php': ['php'],
    \'vim': ['vint'],
    \'sh': ['shell','shellcheck']
    \})
"    \'markdown': ['markdownlint'],
"    \'javascript': ['eslint', 'standard'],

" can use eslint or prettier for web languages
:call extend(g:ale_fixers, {
    \'*': ['remove_trailing_lines', 'trim_whitespace'],
    \'python': ['black'],
    \'javascript': ['prettier'],
    \'typescript': ['prettier'],
    \'css': ['prettier'],      
    \'scss': ['prettier'], 
    \'html': ['prettier'],
    \'markdown': ['prettier'],
    \'php': ['php_cs_fixer']
    \})
let g:ale_fix_on_save = 0
nmap <silent> <Leader>af :ALEFix<CR>
nmap <silent> <Leader>ai :ALEInfo<CR>

nmap <silent> <Leader>an :ALENext<CR>
nmap <silent> <Leader>ap :ALEPrevious<CR>
nmap <silent> <Leader>ane :ALENext -error<CR>
nmap <silent> <Leader>ape :ALEPrevious -error<CR>
nmap <silent> <Leader>anw :ALENext -warning<CR>
nmap <silent> <Leader>apw :ALEPrevious -warning<CR>
