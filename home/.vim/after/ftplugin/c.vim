" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab
