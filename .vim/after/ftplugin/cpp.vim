if exists("b:did_ftplugin_after")
  finish
endif
let b:did_ftplugin_after = 1

autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab
