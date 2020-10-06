if exists("b:did_ftplugin_after")
  finish
endif
let b:did_ftplugin_after = 1

set tabstop=4
set shiftwidth=4
"set expandtab
set grepprg=grep\ -nH\ $*
