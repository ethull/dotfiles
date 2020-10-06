" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" undo stuff
nnoremap U <C-r>

"" Abbreviations
"shortcuts/autocorrect
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" terminal emulation
nnoremap <silent> <leader>sh :terminal<CR>

"" Mappings
" Split
noremap <Leader>s :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>
" recomend remaping window operations resize splits to avoid ctrl + w + shift 
" popular nnoremap +-<> <C-w>+-<>  
" can use HJKL as this works nice in tmux as prefix-HJKL
nnoremap K <C-w>+
nnoremap J  <C-w>-
nnoremap H  <C-w>< 
nnoremap L <C-w>> 
" navigation remaps


" Tabs
"nnoremap <Tab> gt
"nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"  Set working directory
nnoremap <leader>. :lcd %:p:h<CR>
"  Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
"  Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>


cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <leader>e. :put=expand('%:p')<CR>

"" clipboard setup
noremap Y y$
" + = selection clipboard (global), * = unamed clipboard 
" uncomment below to join selection and unamed clipboards
"if has('unnamedplus')
"  set clipboard=unnamed,unnamedplus
"
"noremap YY "+y<CR>
"noremap <leader>p "+gP<CR>
"noremap XX "+x<CR>
" consider noremap PP "+P<CR>

" in normal mode ctrl-x/ctrl-c/ctrl-v use the global register (use normal y and p for unamed)
noremap <C-x> "+x
noremap <C-c> "+y
noremap <C-v> "+P

noremap <Leader>x "+x<CR>
noremap <Leader>y "+y<CR>
noremap <Leader>p "+p<CR>
noremap <Leader>P "+P<CR>
" in insert mode ctrl-c is disabled, ctrl-v copies from the unamed register
inoremap <C-c> <NOP>
inoremap <C-v> <C-r>"

" remap visual block mode
noremap <space>v <C-v>

"if has('macunix')
"  " pbcopy for OSX copy/paste
"  vmap <C-x> :!pbcopy<CR>
"  vmap <C-c> :w !pbcopy<CR><CR>
"endif

"" Buffer setup
" Buffer nav
"noremap <leader>bn :bn<CR>
"noremap <leader>bp :bp<CR>
" Close buffer
"noremap <leader>bc :bd<CR>

" Clean search (highlight)
nnoremap <silent> <leader>no :noh<cr>

"" visual mode
" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
