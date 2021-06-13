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
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'

Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mlaursen/vim-react-snippets'
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

nnoremap tn :tabnew<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-w> :bd<CR>
nnoremap <silent> <A-Left> :tabm -1<CR>
nnoremap <silent> <A-Right> :tabm +1<CR>

inoremap " ""<left>
inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O


"------------Git gutter------------------"
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'

"---------airline------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 2

"------------Python Indentation Guide-----------------"
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On Insert mode pressing tab, insert 4 spaces
set softtabstop=2
" Select indent character line
let g:indentLine_char_list = ['┊']

"--------allow jsx syntax in .js files--------------
let g:jsx_ext_required=0
let g:javascript_plugin_jsdoc=1

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"



