"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/home/chris/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/chris/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'alpertuna/vim-header'        " License headers
NeoBundle 'scrooloose/nerdtree'         " Directory display
NeoBundle 'jistr/vim-nerdtree-tabs'     " NERD Tree tab handling
NeoBundle 'wakatime/vim-wakatime'       " Usage reports to WakaTime
NeoBundle 'ciaranm/detectindent'        " Automatically detect file tabing settings
NeoBundle 'bling/vim-airline'           " Status line
NeoBundle 'tpope/vim-fugitive'          " Git wrapper
NeoBundle 'bling/vim-bufferline'        " Display buffers in status line
NeoBundle 'Shougo/vimproc.vim'          " Dependency for ghcmod-vim
NeoBundle 'eagletmt/ghcmod-vim'         " Haskell hlint and warnings
NeoBundle 'derekwyatt/vim-scala'        " Scala support

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" Status bar
let g:airline_powerline_fonts = 1

" Vim-Header
let g:header_field_filename = 0
let g:header_field_author = 'Christopher Wells'
let g:header_field_author_email = 'cwellsny@nycap.rr.com'

" NERD Tree
map <F2> :NERDTreeTabsToggle<CR>

" DetectIndent
map <F3> :DetectIndent<CR>

" Color column 80
set colorcolumn=80

" Enable relative line numbering
set relativenumber

" Use xclip to set system clipboard to register +
"
" Example: "+y    <- Yank line into clipboard
set clipboard=unnamedplus

" Haskell linting and warning check on file save
autocmd BufWritePost *.hs GhcModCheckAndLintAsync

" Set tabs to be 4 spaces by default
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
