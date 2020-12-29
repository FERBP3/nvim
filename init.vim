set list
set number
set relativenumber

call plug#begin('~/.local/share/nvim/plugged')

" Temas
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'

call plug#end()

if (has("terguicolors"))
	set termguicolors
endif


syntax on
let g:ocenic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext
" gruvbox conf
"set background=dark
"let g:gruvbox_contrast_dark = "hard"
"colorscheme gruvbox
