set encoding=utf-8
scriptencoding utf-8

set number
syntax enable

let g:neocomplete#enable_at_startup=1
set tabstop=4
set softtabstop=4
set shiftwidth=4

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Vim GOLANG
Plug 'fatih/vim-go'

" Auto complate plugin
Plug 'Shougo/neocomplete.vim'

" Tagbar Plugin
Plug 'majutsushi/tagbar'

" Git diff 
Plug 'airblade/vim-gitgutter'

" Vım Git Plugin
Plug 'tpope/vim-fugitive'

" Unite Plugin
Plug 'Shougo/unite.vim'

" Syntax Chacking Plugin
Plug 'scrooloose/syntastic'

" Status Line Plugin
Plug 'itchyny/lightline.vim'

" SASS Supports
Plug 'cakebaker/scss-syntax.vim'

call plug#end()

"Light Line Options
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
      \ }
" calling linghtline plugin
set laststatus=2

" Syntastic Options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Theme Options
colorscheme molokai
let g:molokai_original = 1
let g:rehash256=1
set t_Co=256
let g:solarized_termtrans=1

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
" All NMAP OPtions
nmap <F8> :TagbarToggle<CR>

" View Mode Maps
" To increase size of current vertical split 
nmap <F2> :vertical resize +1<CR>
" To decrease size of current vertical splint
nmap <F3> :vertical resize -1<CR>
" To increase size of current  split 
nmap <F4> :resize +1<CR>
" To decrease size of current splint
nmap <F5> :resize -1<CR>



