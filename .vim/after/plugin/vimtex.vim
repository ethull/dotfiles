let g:tex_flavor = 'latex'
if ! exists('g:vimtex_enabled')
    finish
endif

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
"nnoremap <Leader>c :VimtexCompile<CR>
