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
set backspace=indent,eol,start " Fix backspace in insert mode
set laststatus=2               " Always show a status line
set encoding=utf-8             " Default character encoding
set autochdir                  " Auto-cd to current files directory
set hidden
set ttimeout " Set escape sequence timeout to 100ms
set ttimeoutlen=100
set nu
set listchars=tab:>-,trail:· " highlight tabs and trailing spaces
set list

" ================ Indentation =======================
set ts=4 sw=4 sts=4 ai et

" ================ Completion ========================
set wildmode=list:longest
set wildmenu                " Make ctrl-n and ctrl-p scroll matches
set wildignore=*.o,*.obj,*~ " Specify files to ignore
set wildignore+=*DS_Store*
set wildignore+=*.png,*.jpg,*.gif,*.pdf,*.psd

" ================ Searching =========================
set ignorecase " Ignore case when searching
set smartcase  " Don't ignore case if search contains upper-case characters
set gdefault   " Substitude command (:s) always does global search
set incsearch  " Find the next match as we type the search
set hlsearch   " Highlight searches by default

" ================ Color Config ======================
" colorscheme wombat256mod
set background=dark
colorscheme solarized
set cursorline

" ================ Plugins ===========================
filetype off
set rtp+=~/.vim/bundle/Vundle.vim " Add Vundle to runtime path
call vundle#begin()               " Init Vundle
    Plugin 'gmarik/Vundle.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'kien/ctrlp.vim'
    Plugin 'scrooloose/syntastic'
    Plugin 'Raimondi/delimitMate'
    Plugin 'godlygeek/tabular'
    Plugin 'ervandew/supertab'
    Plugin 'powerline/powerline'
    Plugin 'majutsushi/tagbar'
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'bling/vim-airline'
    Plugin 'marcweber/vim-addon-mw-utils'
    Plugin 'tomtom/tlib_vim'
    Plugin 'garbas/vim-snipmate'
    " Plugin 'Valloric/YouCompleteMe'
call vundle#end()                 " Close Vundle config
filetype plugin indent on

" Supertab
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabClosePreviewOnPopupClose = 1

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
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" Airline
let Powerline_symbols = 'fancy'
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#tabline#enabled = 1

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"

" ================ Remapping =========================
" Swap : and ;
nnoremap ; :
nnoremap : ;
call togglebg#map("<F5>")
nnoremap <leader>t :TagbarToggle<cr>
let g:ctrlp_map = '<c-p>'
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" ================ Startup ===========================
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd w
" autocmd VimEnter * Tagbar
