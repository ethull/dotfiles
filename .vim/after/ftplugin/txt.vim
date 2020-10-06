if exists("b:did_ftplugin_after")
  finish
endif
let b:did_ftplugin_after = 1

" txt
augroup vimrc-wrapping
  autocmd!
  autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END
