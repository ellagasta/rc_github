" insert and use ijkl for inverse T cursor movement
map h <insert>
map i <Up>
map j <Left>
map k <Down>

set t_Co=256
colorscheme wombat256mod

set ffs=unix,dos 

syntax enable        " enable syntax processing

set tabstop=4        " number of visual spaces per TAB
set softtabstop=4    " number of spaces in tab when editing
set expandtab        " tabs are spaces

set number	     " show line numbers

" set cursorline       " highlight current line

set lazyredraw       " redraw only when we need to
set showmatch        " highlight matching [{()}]

set incsearch        " search as characters are entered
set hlsearch         " highlight matches

set timeoutlen=1000 ttimeoutlen=0
 
imap ;; <Esc>

" Default Colors for CursorLine
setlocal cursorline

" Change Color when entering Insert Mode
autocmd InsertEnter * setlocal nocursorline

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * setlocal cursorline

set whichwrap+=<,>,h,l,[,]


