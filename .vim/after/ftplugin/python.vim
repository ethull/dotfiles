if exists("b:did_ftplugin_after")
  finish
endif
let b:did_ftplugin_after = 1

setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
"remove whitespace on save 
autocmd BufWritePre *.py :%s/\s\+$//e
"auto put space after comment"
autocmd BufRead,BufNewFile *.py inoremap # #<space>


