if filereadable(expand("~/.gvimrc.before"))
  source ~/.gvimrc.before
endif

" Use the Solarized Dark theme
set background=dark
colorscheme solarized
" Use 14pt Monaco
set guifont=Monaco:h14
" Better line-height
set linespace=8

" CtrlP OS-X Menu remapping
if janus#is_plugin_enabled('ctrlp') && has("gui_macvim")
  macmenu &File.New\ Tab key=<D-S-t>
endif

if filereadable(expand("~/.gvimrc.after"))
  source ~/.gvimrc.after
endif
