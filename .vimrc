set nu rnu
set termguicolors
set ts=4
set sw=4
set sts=4
set smartindent

"Specifically for Lightline"
set noshowmode

call plug#begin()

Plug 'ghifarit53/tokyonight-vim'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'

call plug#end()

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

let g:lightline = {
			\ 'colorscheme': 'tokyonight',
			\ }


colorscheme tokyonight

" Setting this will help you.
" Vertical bar in insert mode  
let &t_SI = "\<Esc>[6 q"
" Underline in replace mode
let &t_SR = "\<Esc>[4 q"
" Block in other modes
let &t_EI = "\<Esc>[2 q"

