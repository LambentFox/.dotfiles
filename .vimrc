" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'python-rope/ropevim'
Plugin 'kien/ctrlp.vim'
Plugin 'lepture/vim-jinja'
Plugin 'ervandew/supertab'
Plugin 'sickill/vim-monokai'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
" Plugin 'wombat256.vim'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'Wombat'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set nocp
set nu
filetype plugin indent on
set backspace=2
syntax on 
set background=dark
set t_Co=256
colorscheme molokai 

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

imap <S-Tab> <C-o><<
vmap <Tab> >gv
vmap <S-Tab> >gv
set mouse=a

"Split Navigation"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Write and Quit Key Bindings
"nnoremap <C-w> :w

set splitbelow
set splitright

nmap <NUL> :! ls<cr> :shell<cr>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NerdTree
    map <C-n> :NERDTreeToggle<CR>

" Syntastic
    "  Hide numbers in nerdtree
    let g:syntastic_python_checkers=['pylint']
    " Disable Check On Write and Seperate it
    let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [],'passive_filetypes': ['python','latex'] }
    nnoremap <C-e> :SyntasticCheck<CR>
nnoremap <C-i> :TagbarToggle<CR>
"set ruler
" Airline
set laststatus=2
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme = 'wombat'
set encoding=utf-8

" old vim-powerline symbols
 let g:airline_left_sep = '⮀'
 let g:airline_left_alt_sep = '⮁'
 let g:airline_right_sep = '⮂'
 let g:airline_right_alt_sep = '⮃'
