if ! exists('g:loaded_nerd_tree')
    finish
endif

"" settings
let g:nerdtreechdirmode=2
let g:nerdtreeignore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', '^node_modules$']
let g:nerdtreesortorder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:nerdtreeshowbookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:nerdtreemapopenintabsilent = '<rightmouse>'
let g:NERDTreeWinSize = 35
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

"" keybindings
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>
