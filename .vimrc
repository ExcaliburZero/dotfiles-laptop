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
NeoBundle 'alpertuna/vim-header' " License headers
NeoBundle 'scrooloose/nerdtree' " Directory display
NeoBundle 'wakatime/vim-wakatime' " Usage reports to WakaTime

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


" Vim-Header
let g:header_field_filename = 0
let g:header_field_author = 'Christopher Wells'
let g:header_field_author_email = 'cwellsny@nycap.rr.com'

" NERD Tree
map <F2> :NERDTreeToggle<CR>

" Color column 80
set colorcolumn=80

" Enable relative line numbering
set relativenumber
