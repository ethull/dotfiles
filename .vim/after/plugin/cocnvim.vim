if ! exists(':CocCommand')
    finish
endif

"" config
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

"" plugins
let g:coc_global_extensions = [
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-tsserver',
  \ 'coc-phpls',
  \ 'coc-sh',
  \ 'coc-pyright',
  \ 'coc-java',
  \ 'coc-clangd',
  \ 'coc-json',
  \ 'coc-vimtex',
  \ 'coc-marketplace',
  \ 'coc-snippets',
  \ ]
"currently broken
"\ 'coc-pairs',
"\ 'coc-eslint',
"\ 'coc-prettier',

"" completion config
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" navigate snippet placeholders using tab
let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'

"" keymaps
" Use `:CocFold` to fold current buffer
command! -nargs=? CocFold :call     CocAction('fold', <f-args>)
" use `:CocOr` for organize import of current buffer
command! -nargs=0 CocOr :call     CocAction('runCommand', 'editor.action.organizeImport')
" prettier command for coc
" command! -nargs=0 Prettier :CocCommand prettier.formatFile

""" cmds/actions
"<Plug>(coc-diagnostic-info)
"""" jump between errs
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
"nmap <silent> <leader>cgp <Plug>(coc-diagnostic-prev-error)
"nmap <silent> <leader>cgn <Plug>(coc-diagnostic-next-error)
"
"""" definitions (actions)
nmap <Leader>cd <Plug>(coc-definition)
"<Plug>(coc-declaration)
nmap <leader>ci <Plug>(coc-implementation)
"nmap <Leader>ctd <Plug>(coc-type-definition)
nmap <Leader>crf <Plug>(coc-references)
"<Plug>(coc-references-used)
"""" format
nmap <leader>cfs <Plug>(coc-format-selected)
vmap <leader>cfs <Plug>(coc-format-selected)
nmap <leader>cfb <Plug>(coc-format)
" Use `:CocFormat` to format current buffer
"command! -nargs=0 CocFormat :call CocAction('format')

nmap <Leader>crs <Plug>(coc-rename)
"nmap <leader>ac  <Plug>(coc-codeaction)
"<Plug>(coc-codeaction-line)
"remap for do codeaction of selected region, ex: `<leader>aap` for current paragraph
"<Plug>(coc-codeaction-cursor)
"nmap <Leader>cas  <Plug>(coc-codeaction-selected)
"xmap <Leader>cas  <Plug>(coc-codeaction-selected)
"vmap <Leader>cas  <Plug>(coc-codeaction-selected)
"""" other
"<Plug>(coc-openlink)
"<Plug>(coc-codelens-action)
"<Plug>(coc-fix-current)
"<Plug>(coc-float-hide)
"<Plug>(coc-float-jump)
"<Plug>(coc-refactor)
"nmap <silent> <C-d> <Plug>(coc-range-select)
"xmap <silent> <C-d> <Plug>(coc-range-select)
"<Plug>(coc-range-select-backward)
"xmap if <Plug>(coc-funcobj-i)
"omap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap af <Plug>(coc-funcobj-a)
"xmap ic <Plug>(coc-classobj-i)
"omap ic <Plug>(coc-classobj-i)
"xmap ac <Plug>(coc-classobj-a)
"omap ac <Plug>(coc-classobj-a)
"""" multiple cursors
"nmap <silent> <Leader>ccp <Plug>(coc-cursors-position)
nmap <silent> <Leader>ccw <Plug>(coc-cursors-word)
xmap <silent> <Leader>ccr <Plug>(coc-cursors-range)
"nmap <leader>co  <Plug>(coc-cursors-operator)
nnoremap <leader>cr :CocRestart
" Use enter to accept snippet expansion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

"nmap <silent> <Leader>crw :CocCommand document.renameCurrentWord<CR>


""" coclist
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
"nnoremap <silent> <Leader>ce  :<C-u>CocList extensions<cr>
"nnoremap <silent> <Leader>cc  :<C-u>CocList commands<cr>
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next/prev item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
"nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" goto code navigation
":CocSearch pattern */**.html
nmap <leader>cs :CocSearch 

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"call CocActionAsync('jumpDefinition')
