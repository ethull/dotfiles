set tabstop=4
set shiftwidth=4
"set expandtab
set grepprg=grep\ -nH\ $*
let g:tex_flavor = 'latex'
let g:vimtex_complete_enabled = 1
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_compiler_latexmk = {
\				 'backend'    : 'process',
\				 'background' : 1,
\				 'build_dir'  : 'log',
\				 'callback'   : 1,
\				 'continuous' : 1,
\				 'executable' : 'latexmk',
\				 'options'    : [
\				 		'-pdf',
\				 		'-verbose',
\				 		'-file-line-error',
\				 		'-interaction=nonstopmode',
\				 		],
\				}"
