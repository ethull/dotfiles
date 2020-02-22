if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

autocmd Filetype html setlocal ts=2 sw=2 expandtab
