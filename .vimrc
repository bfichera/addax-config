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

let mapleader = ';'

nnoremap ,<space> :new <bar> Explore <CR>
nnoremap <C-j> :SyntasticCheck <CR>
nnoremap <C-k> :SyntasticReset <CR>
nnoremap ,a :ArgWrap<CR>

map <leader><space> :let @/="<cr>" clear search

let g:jukit_output_new_os_window = 1
nnoremap <leader>os :JukitOut source venv/bin/activate<cr>
nnoremap <leader>ov :call jukit#splits#output()<cr>


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


set rtp+=/usr/lib/python3.10/site-packages/powerline/bindings/vim

let g:argwrap_tail_comma=1


let g:syntastic_python_checkers = ["flake8"]
let g:syntastic_mode_map = {"mode":"passive"}
let g:syntastic_shell = "/bin/sh"
set rtp+=/usr/share/vim/vimfiles/plugin

let g:tex_flavor = "latex"

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
