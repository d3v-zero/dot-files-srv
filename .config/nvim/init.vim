call plug#begin()
    Plug 'tpope/vim-commentary'
call plug#end()

set hidden
syntax on

set hidden
set number
set relativenumber
set showcmd
set autochdir
set termguicolors
set background=dark
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set smartindent
set whichwrap+=<,>,h,l
set laststatus=2
set incsearch
set ignorecase
set smartcase
set wrapscan
set iskeyword+=-,.  " neutralizuje seperatory słowa `-` oraz `.`
set cmdheight=1
set cursorline
set lazyredraw
set updatetime=300
set timeout
set timeoutlen=500
set ttimeout
set ttimeoutlen=500
set textwidth=100
set splitright
set splitbelow
set autoread
set ttyfast
set noswapfile
set nobackup
set mouse=a
set wildmenu
set wildmode=longest:full,full
set backspace=indent,eol,start
set clipboard+=unnamedplus
set undofile
set undodir=~/.vim/undodir
set viminfo+=n$HOME/.vim/viminfo/viminfo
set viewdir=$HOME/.vim/view
packadd! gruvbox-material
colorscheme gruvbox
let ayucolor="dark"   " for dark version of theme
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
" colorscheme ayu

let mapleader="\<space>"

nmap <leader>w :w<cr>
nmap <leader>x :x<cr>
nmap <leader>q :q<cr>
nmap qq :q<cr>
nmap <leader>v :e $MYVIMRC<cr>
nmap <leader>f :Files<cr>
nmap <leader>g :Rg<cr>
nmap <leader>b :Buffers<cr>
nmap <leader>r :source $MYVIMRC<cr>
nmap <leader>o :only<cr>
nmap <leader>; :
nmap <leader>i 2<c-g>
nmap <leader>n :NERDTreeToggle<cr>
nmap <leader>u :UndotreeToggle<cr>
nmap <silent> <leader>, :bp<cr>
nmap <silent> <leader>. :bn<cr>
nmap <leader>d :bd<cr>
nmap <leader>vs :vs<cr>
nmap <leader>sp :sp<cr>
nmap <leader>c :call RevBackground()<cr>
nmap <tab> :e #<cr>

nmap <c-_> :Commentary<cr>
vmap <c-_> :Commentary<cr>

nnoremap <f5> :w<cr>:!./%<cr>
inoremap <f5> <esc>:w<cr>:!./%<cr>

vnoremap <c-c> "*y :let @+=@*<cr>
nnoremap <c-c> "*y :let @+=@*<cr>

nmap gh 0
nmap gl $
nmap dh xd0
nmap dl d$
nmap Y y$
nnoremap J maJ`a

inoremap <expr> <TAB> pumvisible() ? "<C-y>":"<TAB>"

cmap <c-k> <up>
cmap <c-j> <down>
cmap <c-h> <left>
cmap <c-l> <right>

let g:floaterm_keymap_toggle = '<leader>t'
let g:floaterm_keymap_kill = '<leader>k'

autocmd Filetype help nnoremap <leader>l <c-]>
autocmd Filetype help nnoremap <leader>h <c-t>

autocmd FileType apache setlocal commentstring=#\ %s

function! RevBackground()
    if &background=="light"
        set background=dark
    else
        set background=light
    endif
endfunction

function! Time()
    let time=strftime("Jest: %F %T")
    echo time
endfunction

" Kopiuje ścieżkę otwartego pliku do schowka systemowego
function! Cwf()
    let @+=expand('%:p')
endfunction

" Wstawia tag np. ":Tag code" daje "<code></code>"
function! Tag(name)
    let @"="<" . a:name . "></" . a:name . ">"
    normal! pbbl
    startinsert
endfunction

command! -nargs=1 Tag call Tag(<f-args>)
command! Cwf call Cwf()
command! Time call Time()
command! RevBackground call RevBackground()
