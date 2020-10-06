" Only do this when not done yet for this buffer
if exists("b:did_ftplugin_after")
  finish
endif
let b:did_ftplugin_after = 1

autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab
