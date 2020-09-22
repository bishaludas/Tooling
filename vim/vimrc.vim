set number
set expandtab
syntax enable

let mapleader="."
let NERDTreeShowHidden=1
colorscheme monokai

call plug#begin('~/.vim/plugged')
" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()



"------------Python Indentation Guide-----------------"
"Indent lines
filetype plugin indent on
set expandtab
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On Insert mode pressing tab, insert 4 spaces
set softtabstop=4
" Select indent character line
let g:indentLine_char_list = ['┊']



"--------------mappings------------------"
"Toggle nerd table"
nmap <C-n> :NERDTreeToggle<CR>
 "Open fuzzy finder"
nmap <C-p> :FZF<CR>
"Open vimrc file"
nmap <Leader>ev :tabedit $MYVIMRC<CR>              
"remove search highlight"
nmap <Leader><space> :nohlsearch<CR>



"------------Searching---------------------"
set hlsearch


"----------------Laravel specific----------"
nmap <Leader>lr :tabnew routes/web.php<CR>
