if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab
