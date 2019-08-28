call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'zchee/deoplete-clang'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif


Plug 'w0rp/ale'

Plug 'rainglow/vim'
Plug 'rafi/awesome-vim-colorschemes'

call plug#end()

" Airline/Powerline-Shell
let g:powerline_active = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='lucius'

" Deoplete 
let g:deoplete#enable_at_startup = 1
call deoplete#custom#var('clang', 'clang_binary', '/usr/bin/clang')

" Setting up clangd
let g:LanguageClient_serverCommands = {
  \ 'cpp': ['clangd'],
  \ 'c': ['clangd'],
  \ }

" Ale
let g:ale_sign_column_always = 0
let g:ale_open_list = 1
let g:ale_linters = {
			\'c': ['clangd'],
\}
let g:ale_gcc_options = '-std=c11 -Wall'
let g:ale_clang_options = '-std=c11 -Wall'
let g:ale_c_parse_compile_commands = 1

" Theme/Colorscheme
set background=dark
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme custom
highlight VertSplit guifg=NONE guifg=NONE

" Config
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set number
set linespace=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set laststatus=2
set showtabline=1
set noshowmode
set t_Co=256

" Repmaps
inoremap {<CR> {}<Left><CR><Up><Right><CR>
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap ' ''<Left>
inoremap " ""<Left>
