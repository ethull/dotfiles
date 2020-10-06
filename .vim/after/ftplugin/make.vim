if exists("b:did_ftplugin_after")
  finish
endif
let b:did_ftplugin_after = 1

augroup vimrc-make-cmake
  autocmd!
  autocmd FileType make setlocal noexpandtab
  autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END
