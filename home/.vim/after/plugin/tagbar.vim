if ! exists('g:loaded_tagbar')
    finish
endif

" Tagbar
let g:tagbar_autofocus = 1

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
