call plug#begin('~/.vim/plugged')

Plug 'gavocanov/vim-js-indent', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'joshdick/onedark.vim'
" Plug 'vim-syntastic/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'

call plug#end()

let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:onedark_termcolors=16
let g:syntastic_javascript_checkers = ['eslint']
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
colorscheme onedark
syntax on

set number
set ruler
set cursorline
highlight CursorLine ctermbg=None ctermfg=None cterm=bold
highlight LineNr ctermfg=DarkGrey
highlight CursorLineNR cterm=bold
set laststatus=2
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
set noshowmode
let g:indentLine_color_term = 239

