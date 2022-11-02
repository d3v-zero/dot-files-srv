let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
    Plug 'ayu-theme/ayu-vim'                    " schemat kolorystyczny
    Plug 'bluz71/vim-nightfly-guicolors'        " schemat kolorystyczny
    Plug 'ggandor/leap.nvim'                    " szybkie poruszanie się po pliku
    Plug 'jamessan/vim-gnupg'                   " szyfrowanie za pomcą GnuPG
    Plug 'junegunn/fzf'                         " wyszukiwanie plików
    Plug 'junegunn/fzf.vim'                     " wyszukiwanie plików
    Plug 'LunarVim/horizon.nvim'                " schemat kolorystyczny
    Plug 'mbbill/undotree'                      " drzewo zmian
    Plug 'mhinz/vim-signify'                    " wizualna pomoc przy pepozytoriach git
    Plug 'morhetz/gruvbox'                      " schemat kolorystyczny
    Plug 'overcache/NeoSolarized'               " schemat kolorystyczny
    Plug 'preservim/nerdtree'                   " menadżer plików
    Plug 'rebelot/kanagawa.nvim'                " schemat kolorystyczny
    Plug 'sainnhe/gruvbox-material'             " schemat kolorystyczny
    Plug 'tmsvg/pear-tree'                      " automatyczne zamykanie ''
    Plug 'tpope/vim-commentary'                 " szybkie komentowanie linii
    Plug 'tpope/vim-eunuch'                     " polecenia systemu Linux np: Chmod, Delete
    Plug 'tpope/vim-fugitive'                   " obsługa repozytoriów git
    Plug 'vim-scripts/AutoComplPop'             " automatyczne uzupełnianie
    Plug 'voldikss/vim-floaterm'                " latający terminal
    Plug 'Yggdroot/indentLine'                  " pionowe prowadnice
    Plug 'ojroques/vim-oscyank'                 " kopiowanie tekstu z Vim przez SSH
call plug#end()

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
set undodir=~/.config/nvim/undodir
set viminfo+=n$HOME/.config/nvim/viminfo/viminfo
set viewdir=$HOME/.config/nvim/view
colorscheme kanagawa

" Skróty klawiszowe
let mapleader="\<space>"

nmap <leader>w :Write<cr>
nmap <leader>x :Write<cr>:quit<cr>
nmap <leader>q :quit<cr>
nmap <leader>z :quit!<cr>
nmap qq :quit<cr>
nmap <leader>v :e $MYVIMRC<cr>
nmap <leader>f :Files<cr>
nmap <leader>g :Rg<cr>
nmap <leader>b :Buffers<cr>
nmap <leader>r :source $MYVIMRC<cr>
nmap <leader>o :only<cr>
nmap <leader>; :
nmap <leader>l :FileInfo<cr>
nmap <leader>n :NERDTreeToggle<cr>
nmap <leader>u :UndotreeToggle<cr>
nmap <leader>? :ToggleVimTips<cr>
nmap <silent> <leader>, :bp<cr>
nmap <silent> <leader>. :bn<cr>
nmap <leader>d :bd<cr>
nmap <leader>vs :vs<cr>
nmap <leader>sp :sp<cr>
nmap <leader>sx <c-w>q<cr>
nmap <leader>c :call RevBackground()<cr>
nmap <tab> :e #<cr>
nmap <bs> daw

nnoremap <esc> :noh<cr><esc>

nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>

nnoremap <m-h> <cmd>vertical resize -2<cr>")
nnoremap <m-j> <cmd>resize +2<cr>")
nnoremap <m-k> <cmd>resize -2<cr>")
nnoremap <m-l> <cmd>vertical resize +2<cr>")

tmap <c-h> <c-\><c-n><c-w>h
tmap <c-j> <c-\><c-n><c-w>j
tmap <c-k> <c-\><c-n><c-w>k
tmap <c-l> <c-\><c-n><c-w>l

nmap <leader>y <Plug>OSCYank
vnoremap <leader>y :OSCYank<CR>

nmap <c-_> :Commentary<cr>
vmap <c-_> :Commentary<cr>

nnoremap <leader>5 :Write<cr>:!./%<cr>

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

cmap <c-r>p <c-r>"

nmap <c-n> <plug>(signify-next-hunk)
nmap <c-p> <plug>(signify-prev-hunk)

let g:floaterm_keymap_toggle = '<leader>t'
let g:floaterm_keymap_kill = '<leader>k'

autocmd Filetype help nnoremap <leader>l <c-]>
autocmd Filetype help nnoremap <leader>h <c-t>

autocmd FileType apache setlocal commentstring=#\ %s

" indentLine
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let g:indentLine_setColors = 0
let g:indentLine_fileTypeExclude = [ "vimwiki", "help", "undotree", "diff", "nerdtree" ]
let g:indentLine_bufTypeExclude = [ "help", "terminal" ]

lua require('leap').add_default_mappings()
" lua << EOF
"     require('leap').setup {
"         case_sensitive = true,
"         max_phase_one_targets = nil,
"         highlight_unlabeled_phase_one_targets = false,
"         max_highlighted_traversal_targets = 10,
"         case_sensitive = false,
"         equivalence_classes = { ' \t\r\n', },
"         substitute_chars = {},
"         safe_labels = { 's', 'f', 'n', 'u', 't', ... },
"         labels = { 's', 'f', 'n', 'j', 'k', ... },
"         special_keys = {
"             repeat_search = '<enter>',
"             next_phase_one_target = '<enter>',
"             next_target = {'<enter>', ';'},
"             prev_target = {'<tab>', ','},
"             next_group = '<space>',
"             prev_group = '<tab>',
"             multi_accept = '<enter>',
"             multi_revert = '<backspace>',
"         }
"     }
" EOF

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

" Wstawia tag np. ":Tag code" daje "<code></code>"
function! Tag(name)
    let @"="<" . a:name . "></" . a:name . ">"
    normal! pbbl
    startinsert
endfunction

function! Write()
    if filereadable(expand("%"))
        for buf in getbufinfo("%")
            if buf.changed
                execute ':silent update'
                echo "Zapisałem" expand("%:p")
            else
                echo "Brak zmian w" expand("%:p")
            endif
        endfor
    else
        execute ':lua MkDir()'
        execute ':silent write'
        echo "Utworzyłem" expand("%:p")
    endif
endfunction

function! GP()
    silent execute ':!$HOME/bin/gp-vim.sh %:p'
    redraw!
endfunction

function! FileInfo()
    let filename=resolve(expand("%:p"))
    let msg=""
    let msg=msg."Mod: ".strftime("%F %T",getftime(filename))." ".filename
    echom msg
endfunction

let g:MyVimTips="off"
function! ToggleVimTips()
    if g:MyVimTips == "on"
        let g:MyVimTips="off"
        pclose
    else
        let g:MyVimTips="on"
        botright pedit ++edit +setlocal\ buftype=nofile\ bufhidden=hide\ nobuflisted\ noswapfile ~/git/dot-files-srv/Vim.md
        wincmd w            " zmienia na okno po prawej
        set nornu nonu      " wyłącza numerowanie linii
        vertical resize 40  " ustawia szerokość okna na 40 znaków
    endif
endfunction

command! ToggleVimTips call ToggleVimTips()
command! FileInfo call FileInfo()
command! GP call GP()
command! S :source %
command! -nargs=1 Tag call Tag(<f-args>)
command! Time call Time()
command! RevBackground call RevBackground()
command! Write call Write()
command! PI :PlugInstall
