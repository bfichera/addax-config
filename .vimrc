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


nnoremap ,<space> :new <bar> Explore <CR>
nnoremap <C-j> :SyntasticCheck <CR>
nnoremap <C-k> :SyntasticReset <CR>

map <leader><space> :let @/="<cr>" clear search


let g:edge_disable_italic_comment = 1
let g:edge_transparent_background = 1
let g:edge_style = 'default'
colorscheme edge
"colorscheme badwolf


hi Normal ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE
hi LineNr ctermfg=247 guifg=NONE
hi LineNr ctermbg=NONE guibg=NONE


let g:ycm_confirm_extra_conf = 0


set rtp+=/usr/lib/python3.9/site-packages/powerline/bindings/vim


let g:syntastic_python_checkers = ["flake8"]
let g:syntastic_mode_map = {"mode":"passive"}
set rtp+=/usr/share/vim/vimfiles/plugin
