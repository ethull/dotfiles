call which_key#register('<Space>', 'g:which_key_map')
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

let g:which_key_map =  {}
let g:which_key_map['f'] = { 'name' : '+fzf' }
let g:which_key_map['a'] = { 'name' : '+ale' }
let g:which_key_map['c'] = { 'name' : '+coc' }
let g:which_key_map['g'] = { 'name' : '+git' }
let g:which_key_map['m'] = { 'name' : '+markdown' }
