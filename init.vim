set encoding=utf-8
set mouse=a
set list
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set hidden
set path+=**
set clipboard+=unnamedplus
set noshowmode
let mapleader=" "
syntax on

" Mapping ESC
inoremap jk <Esc>
inoremap kj <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Turn off highlithing
map <leader>h :noh<cr>

call plug#begin('~/.local/share/nvim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'

" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Easymotion
Plug 'easymotion/vim-easymotion'

" NerdTree
Plug 'preservim/nerdtree'

" Status line
Plug 'itchyny/lightline.vim'

" Git integration
Plug 'tpope/vim-fugitive'

" Comments
"Plug 'b3nj5m1n/kommentary'

call plug#end()


" nerdtree mappings
nnoremap <Leader>n :NERDTreeFocus<CR>

let g:EasyMotion_do_mapping = 0 " Disable default mappings
" easymotion mappings
nmap s <Plug>(easymotion-s2)
" Search for n characters
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)


" oceanic theme conf
"let g:ocenic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1
"colorscheme OceanicNext

" gruvbox theme conf
"set background=dark
"let g:gruvbox_contrast_dark = "hard"
"colorscheme gruvbox

" ONE THEME CONF
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
colorscheme one
set background=dark




" Status line conf
let g:lightline = {
      \ 'colorscheme': 'deus',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }


source $HOME/.config/nvim/plug-config/coc.vim

" global extension
let g:coc_global_extensions = ['coc-json', 'coc-clangd', 'coc-cmake', 'coc-css', 'coc-html', 'coc-sql', 'coc-tsserver', 'coc-vimlsp', 'coc-java']
