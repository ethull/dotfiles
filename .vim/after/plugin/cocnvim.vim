if ! exists(':CocCommand')
    finish
endif

"= coc.nvim
" Use `:CocFormat` to format current buffer
command! -nargs=0 CocFormat :call CocAction('format')
" Use `:CocFold` to fold current buffer
command! -nargs=? CocFold :call     CocAction('fold', <f-args>)
" use `:CocOr` for organize import of current buffer
command! -nargs=0 CocOr :call     CocAction('runCommand', 'editor.action.organizeImport')
" prettier command for coc
" command! -nargs=0 Prettier :CocCommand prettier.formatFile

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

"coc.nvim
let g:coc_global_extensions = [
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-tsserver',
  \ 'coc-phpls',
  \ 'coc-sh',
  \ 'coc-python',
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

"coc.nvim

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

" Navigate snippet placeholders using tab
let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'

" keymaps

nnoremap <leader>cr :CocRestart
" Use enter to accept snippet expansion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

"" coc multiple cursors
"nmap <silent> <Leader>ccp <Plug>(coc-cursors-position)
nmap <silent> <Leader>cw <Plug>(coc-cursors-word)
xmap <silent> <Leader>cw <Plug>(coc-cursors-range)
"nmap <leader>co  <Plug>(coc-cursors-operator)
nmap <silent> <Leader>crn :CocCommand document.renameCurrentWord<CR>

"" code actions
"Remap for do codeAction of current line
"nmap <leader>ac  <Plug>(coc-codeaction)
"Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
"xmap <Leader>cas  <Plug>(coc-codeaction-selected)
"nmap <Leader>cas  <Plug>(coc-codeaction-selected)

" Fix autofix problem of current line
"nmap <leader>qf  <Plug>(coc-fix-current)

"" custom func bindings
"Create mappings for function text object, requires document symbols feature of languageserver.
"xmap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap if <Plug>(coc-funcobj-i)
"omap af <Plug>(coc-funcobj-a)
" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"nmap <silent> <C-d> <Plug>(coc-range-select)
"xmap <silent> <C-d> <Plug>(coc-range-select)

"" CocList
" Show all diagnostics
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <Leader>ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <Leader>cc  :<C-u>CocList commands<cr>
" Find symbol of current document
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
"nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

"call CocActionAsync('jumpDefinition')
" goto code navigation
"" definitions
nmap <Leader>cd <Plug>(coc-definition)
nmap <Leader>ctd <Plug>(coc-type-definition)
nmap <leader>ci <Plug>(coc-implementation)
nmap <Leader>crf <Plug>(coc-references)

"nmap <Leader>crn <Plug>(coc-rename)
"" jump between errs
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> <leader>cgp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>cgn <Plug>(coc-diagnostic-next-error)
