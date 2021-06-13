colorscheme gruvbox
"teminal color : #282828
filetype plugin indent on
set bg=dark
set number
set hlsearch
set expandtab
let mapleader="."
	
call plug#begin('~/.vim/plugged')
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

"Nerdtree
let g:NERDTreeShowHidden=1

"--------------mappings------------------"
"Toggle nerd table"
nmap <C-n> :NERDTreeToggle<CR>
 "Open fuzzy finder"
nmap <C-p> :FZF<CR>
"remove search highlight"
nmap <Leader><space> :nohlsearch<CR>

"------------Git gutter------------------"
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'

"---------airline------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"------------Python Indentation Guide-----------------"
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On Insert mode pressing tab, insert 4 spaces
set softtabstop=4
" Select indent character line
let g:indentLine_char_list = ['┊']
