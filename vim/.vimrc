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
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'

Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mlaursen/vim-react-snippets'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

"------Nerdtreea-------------------------"
let g:NERDTreeShowHidden=1
"------light line theme
set laststatus=2
" Quotes not shown in json fix
let g:indentLine_setConceal = 0
" Prettier fix
let &t_TI = ""
let &t_TE = ""
let g:prettier#config#print_width = '100'
let g:prettier#config#tab_width = '2'



"--------------mappings------------------"
"Toggle nerd table"
nmap <C-n> :NERDTreeToggle<CR>
 "Open fuzzy finder"
nmap <C-p> :FZF<CR>
"remove search highlight"
nmap <Leader><space> :nohlsearch<CR>
"vim search text in multiple files
nmap <S-f> :Ag<CR>
"show terminal and place it below"
nmap tt :term<CR>
set splitbelow

"----------open new tab-------------------"
nmap tn :tabnew<CR>
nmap <C-Left> :tabprevious<CR>
nmap <C-Right> :tabnext<CR>
nmap <C-w> :bd<CR>
nmap <silent> <A-Left> :tabm -1<CR>
nmap <silent> <A-Right> :tabm +1<CR>

"------Brackets quotes auto complete------"
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

"show git diff highlight"
nmap <Leader>df :GitGutterLineHighlightsToggle<CR>
nmap <Leader>hc :pclose<CR>
".hp hunk preview
".hu undo code changes


"------------Python Indentation Guide-----------------"
" show existing tab with 4 spaces width, Replace 2 with 4
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On Insert mode pressing tab, insert 4 spaces
set softtabstop=4
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

