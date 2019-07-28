" Vim Plug
call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()

" Italics escape codes
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" Italics
let g:palenight_terminal_italics=1

" True Colors
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" Line numbers
set number

" Status bar
set laststatus=2
let g:lightline = { 'colorscheme': 'palenight' }

" Reduce updatetime to 100ms
set updatetime=100

" Appearance
set background=dark
colorscheme palenight 
