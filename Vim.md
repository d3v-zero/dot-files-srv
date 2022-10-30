# Vim

## Skróty klawiszowe

| Skrót          | Opis                                                          |
|----------------|---------------------------------------------------------------|
| `<spacja>`     | Klawisz LEADER                                                |
| `<tab>`        | :e #<cr>                                                      |
| `<esc>`        | :noh<cr><esc>                                                 |
| `<leader>w`    | Zapisanie zmian za pomocą funkcji `Write`                     |
| `<leader>x`    | Zapisanie zmian i wyjście                                     |
| `<leader>q`    | Wyjście z Vim `:quit`                                         |
| `qq`           | Wyjście z Vim `:quit`                                         |
| `<leader>z`    | Wyjście z Vim bez zapisania `:quit!`                          |
| `<leader>v`    | Edycja pliku konfiguracyjnego Vim                             |
| `<leader>r`    | Ponownie wczytuje konfigurację Vim                            |
| `<leader>f`    | :Files<cr>                                                    |
| `<leader>g`    | :Rg<cr>                                                       |
| `<leader>b`    | :Buffers<cr>                                                  |
| `<leader>o`    | :only<cr>                                                     |
| `<leader>;`    | Wchodzi do trybu **COMMAND**                                  |
| `<leader>l`    | :FileInfo<cr>                                                 |
| `<leader>n`    | :NERDTreeToggle<cr>                                           |
| `<leader>u`    | :UndotreeToggle<cr>                                           |
| `<leader>?`    | :ToggleVimTips<cr>                                            |
| `<leader>c`    | :call RevBackground()<cr>                                     |
| `<leader>,`    | Przechodzi do poprzedniego bufora                             |
| `<leader>.`    | Przechodzi do następnego bufora                               |
| `<leader>d`    | :bd<cr>                                                       |
| `<leader>vs`   | :vs<cr>                                                       |
| `<leader>sp`   | :sp<cr>                                                       |
| `<leader>sx`   | Zamyka aktywne okno                                           |
| `<c-h>`        | <c-w><c-h>                                                    |
| `<c-j>`        | <c-w><c-j>                                                    |
| `<c-k>`        | <c-w><c-k>                                                    |
| `<c-l>`        | <c-w><c-l>                                                    |

```
nnoremap <m-h> <cmd>vertical resize -2<cr>")
nnoremap <m-j> <cmd>resize +2<cr>")
nnoremap <m-k> <cmd>resize -2<cr>")
nnoremap <m-l> <cmd>vertical resize +2<cr>")

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
```
