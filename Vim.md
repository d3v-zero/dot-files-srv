# Vim

## Skróty klawiszowe

| Skrót          | Opis                                                          |
|----------------|---------------------------------------------------------------|
| `<spacja>`     | Klawisz LEADER                                                |
| `<tab>`        | Przechodzi pomiędzy dwoma ostatnimi buforami                  |
| `<esc>`        | Wyłącza wyróżnienie wyszukiwanego tekstu                      |
| `<backspace>`  | Usuwa słowo pod kursorem `daw`                                |
| `<leader>w`    | Zapisanie zmian za pomocą funkcji `Write`                     |
| `<leader>x`    | Zapisanie zmian i wyjście                                     |
| `<leader>q`    | Wyjście z Vim `:quit`                                         |
| `qq`           | Wyjście z Vim `:quit`                                         |
| `<leader>z`    | Wyjście z Vim bez zapisania `:quit!`                          |
| `<leader>v`    | Edycja pliku konfiguracyjnego Vim                             |
| `<leader>r`    | Ponownie wczytuje konfigurację Vim                            |
| `<leader>f`    | Wyszukiwanie plików FZF                                       |
| `<leader>g`    | Przeszukiwanie plików ripgrep                                 |
| `<leader>b`    | Lista buforów                                                 |
| `<leader>o`    | Zamyka wszystkie okna poza bieżącym `:only`                   |
| `<leader>;`    | Wchodzi do trybu **COMMAND**                                  |
| `<leader>l`    | Wyświetla informacje o pliku                                  |
| `<leader>n`    | Uruchamia menadżer plików NERDTree                            |
| `<leader>u`    | Wyświetla listę zmian Undotree                                |
| `<leader>?`    | Wyświetla plik Vim.md                                         |
| `<leader>c`    | Zmienia kolor tłą jasne / ciemne                              |
| `<leader>,`    | Przechodzi do poprzedniego bufora                             |
| `<leader>.`    | Przechodzi do następnego bufora                               |
| `<leader>d`    | Zamyka bufor                                                  |
| `<leader>vs`   | Dzieli ekran w pionie                                         |
| `<leader>sp`   | Dzieli ekran w poziomie                                       |
| `<leader>sx`   | Zamyka aktywne okno                                           |
| `<c-h>`        | Przechodzi do okna po lewej                                   |
| `<c-j>`        | Przechodzi do okna niżej                                      |
| `<c-k>`        | Przechodzi do okna wyżej                                      |
| `<c-l>`        | Przechodzi do okna po prawej                                  |
| `<m-h>`        | Zmniejsza szerokość aktywnego okna (Alt-h)                    |
| `<m-j>`        | Zwiększa wysokość aktywnego okna (Alt-j)                      |
| `<m-k>`        | Zmniejsza wysokość aktywnego okna (Alt-k)                     |
| `<m-l>`        | Zwiększa szerokość aktywnego okna (Alt-l)                     |
| `gh`           | Przechodzi na początek linii                                  |
| `gl`           | Przechodzi na koniec linii                                    |
| `dh`           | Kasuje od kursora do początku linii                           |
| `dl`           | Kasuje od kursora do końca linii                              |
| `Y`            | Kopiuje od kursora do końca linii                             |
| `J`            | Łączy linie                                                   |

```
tmap <c-h> <c-\><c-n><c-w>h
tmap <c-j> <c-\><c-n><c-w>j
tmap <c-k> <c-\><c-n><c-w>k
tmap <c-l> <c-\><c-n><c-w>l

nmap <c-_> :Commentary<cr>
vmap <c-_> :Commentary<cr>

nmap <c-n> <plug>(signify-next-hunk)
nmap <c-p> <plug>(signify-prev-hunk)

nnoremap <leader>5 :Write<cr>:!./%<cr>

inoremap <expr> <TAB> pumvisible() ? "<C-y>":"<TAB>"

cmap <c-k> <up>
cmap <c-j> <down>
cmap <c-h> <left>
cmap <c-l> <right>

cmap <c-r>p <c-r>"

let g:floaterm_keymap_toggle = '<leader>t'
let g:floaterm_keymap_kill = '<leader>k'

autocmd Filetype help nnoremap <leader>l <c-]>
autocmd Filetype help nnoremap <leader>h <c-t>
```
