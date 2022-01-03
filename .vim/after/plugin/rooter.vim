if ! exists('g:rooter_targets')
    finish
endif

"let g:rooter_targets = '/,*'
let g:rooter_patterns = ['.git', 'Makefile', '*.sln', 'build/env.sh']
"let g:rooter_change_directory_for_non_project_files = ''
