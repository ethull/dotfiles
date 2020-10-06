if exists("b:did_ftplugin_after")
  finish
endif
let b:did_ftplugin_after = 1

autocmd Filetype html setlocal ts=2 sw=2 expandtab
