syntax on
set encoding=utf-8
set number
set ruler
set wrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set laststatus=2
set showmode
set showcmd
set ignorecase
set smartcase
set showmatch
set background=dark

filetype plugin on
" Load plugins
call plug#begin()

Plug 'FooSoft/vim-argwrap'

Plug 'lervag/vimtex'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
filetype indent off

let mapleader = ';'

nnoremap ,<space> :new <bar> Explore <CR>
nnoremap .<space> :Vexplore <CR>
nnoremap ,a :ArgWrap<CR>
nnoremap ,d :r! date<CR>
nnoremap <leader>t :term<CR><C-w>J<C-w>k15<C-w>+<C-w>j
nnoremap <leader>+ 15<C-w>+

map <leader><space> :let @/="<cr>" clear search

let g:edge_disable_italic_comment = 1
let g:edge_transparent_background = 1
let g:edge_style = 'default'
colorscheme edge

hi Normal ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE
hi LineNr ctermfg=247 guifg=NONE
hi LineNr ctermbg=NONE guibg=NONE

set rtp+=/usr/lib/python3.10/site-packages/powerline/bindings/vim

let g:argwrap_tail_comma=1


set rtp+=/usr/share/vim/vimfiles/plugin

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


python3 <<EOF
import sys; sys.path.append("/usr/lib/python3.11/site-packages/")
EOF
