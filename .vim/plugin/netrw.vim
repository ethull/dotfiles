" todo make as good as nerdtree
" https://gist.github.com/danidiaz/37a69305e2ed3319bfff9631175c5d0f
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
nnoremap <silent> <F4> :Vexplore<CR>
