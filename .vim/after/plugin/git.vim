if ! exists('g:loaded_fugitive')
    finish
endif

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

if ! exists('g:loaded_rhubard')
    finish
endif

" Open current line on GitHub
nnoremap <Leader>go :.Gbrowse<CR>
 

