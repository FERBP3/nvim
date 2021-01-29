set list
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard+=unnamedplus
set noshowmode
syntax enable

" Mapping ESC
inoremap jk <Esc>
inoremap kj <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

call plug#begin('~/.local/share/nvim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'

" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" NerdTree
Plug 'preservim/nerdtree'

" Status line
Plug 'itchyny/lightline.vim'

" Git integration
Plug 'tpope/vim-fugitive'

call plug#end()

" nerdtree mappings
nnoremap <leader>n :NERDTreeFocus<CR>

" oceanic theme conf
"let g:ocenic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1
"colorscheme OceanicNext

" gruvbox theme conf
set background=dark
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox

" one theme conf
"colorscheme one
"set background=dark

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
let g:coc_global_extensions = ['coc-json', 'coc-clangd', 'coc-cmake', 'coc-css', 'coc-html', 'coc-sql', 'coc-tsserver']
