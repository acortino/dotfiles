"Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

"Vundle Plugins
Plugin 'vim-scripts/indentpython.vim'      " PEP8 Python Indentation
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'           " Syntx Highlighter
Plugin 'nvie/vim-flake8'                   " Flake 8 Syntax Checking
Plugin 'preservim/nerdtree'                " Filesystem explorer
Plugin 'jiangmiao/auto-pairs'              " Quote / Brackets / etc. in pairs
Plugin 'vim-airline/vim-airline'           " Status bar
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'                 " Left Tag Bar
" Plugin 'tpope/vim-fugitive'              " Git  
Plugin 'Yggdroot/indentLine'               " Vertical Indentation line
Plugin 'pangloss/vim-javascript'           " JavaScript support
Plugin 'leafgarland/typescript-vim'        " TypeScript syntax
Plugin 'maxmellon/vim-jsx-pretty'          " JS and JSX syntax
Plugin 'junegunn/fzf'                      " Search (dependency)
Plugin 'junegunn/fzf.vim'                  " Search in all file
"End of Vundle Plugins

call vundle#end()
filetype plugin indent on

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Foldin
set foldmethod=indent
set foldlevel=99

" YCM
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Flake8
autocmd FileType python map <buffer> <C-C> :call flake8#Flake8()<CR>

" Indentline
let g:indentLine_char_list = ['┊', '|', '¦', '┆', '┊']

" let g:airline_theme='transparent'

set number
syntax on
set showmatch
set cursorline
set ignorecase
filetype on
set ai
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set textwidth=79
set fileformat=unix
set expandtab
set incsearch
set hlsearch
set wildmenu
set spellsuggest=5
set encoding=utf-8
set ruler
set showcmd
let python_highlight_all=1

filetype plugin indent on

" MiniBufferExplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Tagbar
let g:tagbar_ctags_bin = "/usr/local/bin/ctags"
nnoremap <C-T><C-T> :TagbarToggle<CR>
