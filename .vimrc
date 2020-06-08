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

nnoremap ,<space> :new <bar> Explore <CR>
nnoremap <C-j> :SyntasticCheck <CR>
nnoremap <C-k> :SyntasticReset <CR>

map <leader><space> :let @/="<cr>" clear search
colorscheme badwolf
hi Normal ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE
hi LineNr ctermfg=247 guifg=NONE
hi LineNr ctermbg=NONE guibg=NONE
set rtp+=/usr/lib/python3.8/site-packages/powerline/bindings/vim

let g:syntastic_python_checkers = ["flake8"]
let g:syntastic_mode_map = {"mode":"passive"}
set rtp+=/usr/share/vim/vimfiles/plugin

"let g:powerline_pycmd="py3"

"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"autocmd VimEnter * wincmd w
