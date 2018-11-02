" plugin
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'valloric/youcompleteme'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-airline/vim-airline'
Plug 'posva/vim-vue'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/LeaderF'
call plug#end()

" nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Z>'

" tab
set shiftwidth=4
set expandtab
set autoindent

" find
set ignorecase

" theme
syntax enable
set background=dark
colorscheme solarized
:set number
