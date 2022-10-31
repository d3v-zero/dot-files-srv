# Vim

## Skróty klawiszowe

### Skróty klawiszowe w trybie NORMAL

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
| `<c-/>`        | Uruchamia plugin Commentary w bieżącej linii                  |
| `<c-n>`        | Przechodzi do następnej zmiany plugin Signify                 |
| `<c-p>`        | Przechodzi do poprzedniej zmiany plugin Signify               |
| `<leader>5`    | Uruchamia skrypt Shell / Python itp.                          |
| `<leader>t`    | Pokazuje / chowa pływający termnal - plugin Floaterm          |
| `<leader>k`    | Wyłącza sesje uruchomionego terminala - plugin Floaterm       |
| `<leader>l`    | W plikach pomocy Vim przechodzi do linku pod kursorem         |
| `<leader>h`    | W plikach pomocy Vim przechodzi do poprzedniej strony         |

### Skróty klawiszowe trybie VISUAL

| Skrót          | Opis                                                          |
|----------------|---------------------------------------------------------------|
| `<c-/>`        | Uruchamia plugin Commentary na zaznaczonych liniach           |

### Skróty klawiszowe terminal

Skróty klawiszowe dostępne po wydaniu polecenia `:term`

| Skrót          | Opis                                                          |
|----------------|---------------------------------------------------------------|
| `<c-h>`        | Przechodzi do okna po lewej                                   |
| `<c-j>`        | Przechodzi do okna nizej                                      |
| `<c-k>`        | Przechodzi do okna wyżej                                      |
| `<c-l>`        | Przechodzi do okna po prawej                                  |

### Skróty klawiszowe w trybie INSERT

| Skrót          | Opis                                                          |
|----------------|---------------------------------------------------------------|
| `<c-h>`        | Kursor w lewo                                                 |
| `<c-j>`        | Kursor w dół                                                  |
| `<c-k>`        | Kursor w górę                                                 |
| `<c-l>`        | Kursor w prawo                                                |
| `<tab>`        | Wybór wybranej automatycznej podpowiedzi                      |
| `<c-n>`        | Poruszanie się w automatycznych podpowiedziach - w dół        |
| `<c-p>`        | Poruszanie się w automatycznych podpowiedziach - w górę       |

### Skróty klawiszowe w trybie COMMAND

| Skrót          | Opis                                                          |
|----------------|---------------------------------------------------------------|
| `<c-h>`        | Kursor w linii komend w lewo                                  |
| `<c-j>`        | Poruszanie się w historii komend                              |
| `<c-k>`        | Poruszanie się w historii komend                              |
| `<c-l>`        | Kursor w linii komend w prawo                                 |
| `<c-r>p`       | Wkleja zawartość schowka do linii komend                      |

## Zainstalowane pluginy

| Plugin                 | Opis                                         |
|------------------------|----------------------------------------------|
| ayu-vim                |  schemat kolorystyczny                       |
| vim-nightfly-guicolors |  schemat kolorystyczny                       |
| vim-gnupg              |  szyfrowanie za pomcą GnuPG                  |
| fzf                    |  wyszukiwanie plików                         |
| fzf.vim                |  Wyszukiwanie plików                         |
| horizon.nvim           |  schemat kolorystyczny                       |
| undotree               |  drzewo zmian                                |
| vim-signify            |  wizualna pomoc przy pepozytoriach git       |
| gruvbox                |  schemat kolorystyczny                       |
| NeoSolarized           |  schemat kolorystyczny                       |
| nerdtree               |  menadżer plików                             |
| kanagawa.nvim          |  schemat kolorystyczny                       |
| gruvbox-material       |  schemat kolorystyczny                       |
| pear-tree              |  automatyczne zamykanie ''                   |
| vim-commentary         |  szybkie komentowanie linii                  |
| vim-eunuch             |  polecenia systemu Linux np: Chmod, Delete   |
| vim-fugitive           |  obsługa repozytoriów git                    |
| AutoComplPop           |  automatyczne uzupełnianie                   |
| vim-floaterm           |  latający terminal                           |
| indentLine             |  pionowe prowadnice                          |

