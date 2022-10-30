# Vim

## Skróty klawiszowe

| Skrót          | Opis                                                          |
|----------------|---------------------------------------------------------------|
| `<spacja>`     | Klawisz LEADER                                                |
| `<leader>w`    | Zapisanie zmian za pomocą funkcji `Write`                     |
| `<leader>x`    | Zapisanie zmian i wyjście                                     |
| `<leader>q`    | Wyjści `:quit`                                                |

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

nnoremap <esc> :noh<cr><esc>

nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>

nnoremap <m-h> <cmd>vertical resize -2<cr>")
nnoremap <m-j> <cmd>resize +2<cr>")
nnoremap <m-k> <cmd>resize -2<cr>")
nnoremap <m-l> <cmd>vertical resize +2<cr>")

nnoremap <leader>vs <cmd>vs<cr>
nnoremap <leader>sp <cmd>sp<cr>

tmap <c-h> <c-\><c-n><c-w>h
tmap <c-j> <c-\><c-n><c-w>j
tmap <c-k> <c-\><c-n><c-w>k
tmap <c-l> <c-\><c-n><c-w>l

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

