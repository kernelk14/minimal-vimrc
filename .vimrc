set nu rnu
set termguicolors
set ts=4
set sw=4
set sts=4
set smartindent

set cursorline
set expandtab
set incsearch
set ignorecase
set nohls

"Specifically for Lightline"
set noshowmode

call plug#begin()

Plug 'ghifarit53/tokyonight-vim'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-bufferline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'zefei/vim-wintabs'
Plug 'zefei/vim-wintabs-powerline'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'ollykel/v-vim'


call plug#end()

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1


set laststatus=2
let g:lightline = {
			\ 'colorscheme': 'tokyonight',
            \ 'component_function': {
            \   'gitbranch': 'FugitiveHead'
            \ }
			\ }

colorscheme tokyonight

" Setting this will help you.
" Vertical bar in insert mode  
let &t_SI = "\<Esc>[6 q"
" Underline in replace mode
let &t_SR = "\<Esc>[4 q"
" Block in other modes
let &t_EI = "\<Esc>[2 q"


"KEYMAPS

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <silent> } <cmd>bn<CR>
nnoremap <silent> { <cmd>bp<CR>
nnoremap <silent> ;d <cmd>bd<cr>

nnoremap <silent> ;l <cmd>NERDTreeToggle<cr>

map <silent> <A-Up> :move '<-2<cr>gv-gv
map <silent> <A-Down> :move '>+1<cr>gv-gv


nnoremap ;s :split<cr>
nnoremap ;v :vsplit<cr>
nnoremap ;q <C-w>q
nnoremap ;= <C-w>=
