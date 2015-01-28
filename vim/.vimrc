set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'digitaltoad/vim-jade'
Plugin 'haml'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'kien/ctrlp.vim'



call vundle#end()
filetype plugin indent on


set tabstop=2
set shiftwidth=2
set expandtab

set smartindent
set shiftwidth=2

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Show line numbers
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Show Command
set cursorline
filetype indent on
set wildmenu
set showmatch
set incsearch
set nohlsearch
set updatetime=1000
set laststatus=2


colorscheme monokai
let g:airline_powerline_fonts = 1
let g:airline_theme = 'molokai'

map <C-x> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <A-Left> :tabprevious<CR>
map <A-Right> :tabnext<CR>

let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

" Handle tmux $TERM quirks in vim
if $TERM =~ '^screen-256color'
    map <Esc>OH <Home>
    map! <Esc>OH <Home>
    map <Esc>OF <End>
    map! <Esc>OF <End>
endif

set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>t :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn|node_modules)|\_site)$',
  \ 'file': '\v\.(exe|pyc|so|dll|class|png|jpg|jpeg)$',
  \}
let g:buffergator_viewport_split_policy = 'R'
let g:buffergator_suppress_keymaps = 1
