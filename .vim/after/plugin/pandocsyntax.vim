"g:vim_pandoc_syntax_exists

augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END
let g:pandoc#syntax#codeblocks#embeds#langs = ["python", "javascript", "sh", "java"]
