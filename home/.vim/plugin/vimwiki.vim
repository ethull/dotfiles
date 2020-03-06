"let g:vimwiki_list = [{'path': '~/wiki', 'template_path': '~/wiki/templates/',
"          \ 'template_default': 'default', 'syntax': 'markdown', 'ext': '.md',

"if ! exists('g:loaded_vimwiki')
"    finish
"endif

let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
let wiki_1 = {}
let wiki_1.path = '~/wiki/'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'
let wiki_1.path_html = '~/wiki/wiki_html'
"let wiki_1.template_path = '~/wiki/templates/'
"let wiki_1.template_default = 'default'
"let wiki_1.custom_wiki2html = 'vimwiki_markdown'
"let wiki_1.html_filename_parameterization = 1
"let wiki_1.template_ext = '.tpl'

let wiki_2 = {}
let wiki_2.path = '~/kentwiki/'
let wiki_2.syntax = 'markdown'
let wiki_2.ext = '.md'
let wiki_2.path_html = '~/kentwiki/kentwiki_html'

let g:vimwiki_list = [wiki_1, wiki_2]

"https://vimwiki.github.io/
"https://github.com/michal-h21/vimwiki-sync
"https://github.com/zimbatm/wiki
