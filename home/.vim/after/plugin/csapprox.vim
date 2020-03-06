if ! exists('g:CSApprox_loaded')
    finish
endif

if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=Menlo:h11
    set transparency=6
  endif
else
  let g:CSApprox_loaded = 0
endif


