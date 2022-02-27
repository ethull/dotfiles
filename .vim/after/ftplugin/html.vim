if exists("b:did_ftplugin_after")
  finish
endif
let b:did_ftplugin_after = 1

"autocmd Filetype html setlocal ts=2 sw=2 sts=2 expandtab
setl tabstop=2
setl shiftwidth=2
setl expandtab
setl softtabstop=2
