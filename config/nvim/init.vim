" Vim config file
" NOTE: Much of this file is borrowed from/based off of:
"   http://zacharyflower.com/2012/12/11/mTagbarToggle

" ================ Essential Config ==================
set nocompatible   " Use Vim settings, rather than Vi settings
syntax on          " Enable syntax highlighting
set t_Co=256       " 256 Colors
filetype plugin on

" ================ General Config ====================
set title                      " Update terminal window title
set visualbell                 " Turn off sound
set showmode                   " Show current mode
set showcmd                    " Show incomplete commands
set autoread                   " Reload files changed outside of vim
set ttyfast                    " Use a fast terminal connection
set ruler                      " Show row and column in status bar
set autochdir                  " Auto-cd to current files directory
set hidden                     " Hides buffers upon abandonment
set number                     " Display line numbers on sidebar
set listchars=tab:>-,trail:·   " Highlight tabs and trailing spaces
set list
set guioptions-=r              " Fix GUI
set guioptions+=R
set backup                     " Turn on backups
set backupdir=~/.config/nvim/backup    " Move backups to a specific directory
set backspace=indent,eol,start " Fix backspace in insert mode
set laststatus=2               " Always show a status line
set encoding=utf-8             " Default character encoding

" ================ Indentation =======================
" Set indentation defaults
set tabstop=4 shiftwidth=4 softtabstop=4 autoindent expandtab

" ================ Completion ========================
set wildmode=list:longest
set wildmenu " Make ctrl-n and ctrl-p scroll matches
set wildignore=*.o,*.obj,*~ " Specify files to ignore
set wildignore+=*DS_Store*
set wildignore+=*.png,*.jpg,*.gif,*.pdf,*.psd

" ================ Searching =========================
set ignorecase " Ignore case when searching
set smartcase " Don't ignore case if search contains upper-case characters
set gdefault " Substitude command (:s) always does global search
set incsearch " Find the next match as we type the search
set hlsearch " Highlight searches by default

" ================ Color/Fonts =======================
" if has('gui_running')
"     set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h12
" endif

" colorscheme jellybeans

set cursorline
hi CursorLine cterm=NONE guibg=Grey40

" ================ Plugins ===========================
call plug#begin('~/.config/nvim')
     Plug 'scrooloose/nerdtree'
     Plug 'kien/ctrlp.vim'
     Plug 'scrooloose/syntastic'
     Plug 'Raimondi/delimitMate'
     Plug 'tpope/vim-fugitive'
     Plug 'nanotech/jellybeans.vim'
     Plug 'Shougo/neocomplete.vim'
     " Plug 'powerline/powerline'
     " Plug 'bling/vim-airline'
     " Plug 'Shougo/neocomplete'
call plug#end()

" NerdTree
let mapleader = ","
nnoremap <leader>n :NERDTreeToggle<cr>
let NERDTreeDirArrows=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$',
            \ '\.obj$', '\.o$', '\.so$', '\.egg$',
            \ '^\.git$', '\.os$', '\.dylib$',
            \ '\.a$', 'DS_STORE', '\.jpg$',
            \ '\.png$', '\.gif$', '\.pdf' ]
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeHighlightCursorline=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
            \&& b:NERDTreeType == "primary") | q | endif

" DelimitMate
let delimitMate_expand_cr=1
au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:},<:>"
au FileType vim let b:delimitMate_quotes = "\'"

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=0
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" ================ Remapping =========================
 "Swap : and ;
nnoremap ; :
nnoremap : ;
nnoremap <leader>t :TagbarToggle<cr>
let g:ctrlp_map = '<c-p>'
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
nnoremap <silent> gc xph
" Remap <Esc> to normal mode in terminal *nvim*
tnoremap <Esc> <C-\><C-n>
