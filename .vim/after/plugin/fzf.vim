"https://github.com/junegunn/fzf.vim
if ! exists(':FZF')
    finish
endif

"  fzf.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

"use custim search program if avaliable
"" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif

"" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

nnoremap <silent> <leader>fzm :FZF -m<CR>

nmap <leader>ff :Files<CR>
nmap <leader>fF :GFiles --cached --others --exclude-standard<CR>
nmap <leader>fb :Buffers<CR>
nmap <leader>fc :Colors<CR>
"requires ripgrep
"nmap <leader>fr :Rg
nmap <leader>fl :Lines<CR>
nmap <leader>fL :BLines<CR>
nmap <leader>ft :Tags<CR>
nmap <leader>fT :BTags<CR>
nmap <leader>fmk :Marks<CR>
nmap <leader>fw :Windows<CR>
"requires UltiSnips
"nmap <leader>fs :Snippets<CR>
nmap <leader>fhb :History<CR>
nmap <leader>fhc :History:<CR>
nmap <leader>fh/ :History/<CR>
nmap <leader>fmp :Maps<CR>
"nmap <leader>fh :Helptags<CR>
nmap <leader>fp :Filetypes<CR>

cnoreabbrev Ls Buffers
"nmap <leader><tab> <plug>(fzf-maps-n)

" ALT-A CTRL-Q to select all and build quickfix list
" https://github.com/junegunn/fzf.vim/issues/185
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction
"defaults: ctrl-t, ctrl-x, ctrl-v
let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
