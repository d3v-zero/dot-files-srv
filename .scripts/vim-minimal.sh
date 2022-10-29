#!/usr/bin/env bash

NVIM=1
VIM_CONF_URL=""
DATA=$(date +%F-%T | tr : -)

if [ $NVIM -eq 1 ]; then
    # NeoVim
    CONFIG_FILE="$HOME/.config/nvim/init.vim"
    CONFIG_DIR="$HOME/.config/nvim"
    PACK_DIR="$HOME/.local/share/nvim/site/pack/plugins/start/"
else
    # Vim
    CONFIG_FILE="$HOME/.vim/vimrc"
    CONFIG_DIR="$HOME/.vim"
    PACK_DIR="$HOME/.vim/pack/plugins/start/"
fi

mkdir -p $CONFIG_DIR/undodir
mkdir -p $PACK_DIR
mkdir -p ~/tmp

TMP=~/tmp

function pobierz() {
    if [ -f "$CONFIG_FILE" ]; then
        cp $CONFIG_FILE $CONFIG_FILE-$DATA
    fi
    curl -o $TMP/vim-minimal.vim $VIM_CONF_URL
    cp $TMP/vim-minimal.vim $CONFIG_FILE
}

if [ -f "$CONFIG_FILE" ]; then
    read -p "Czy chcesz zastąpić już istniejący plik konfiguracyjny? [y/N]: "
    case "$REPLY" in
        y|Y|t|T)
            pobierz
            ;;
        n|N)
            exit
    esac
else
    pobierz
fi

declare LISTA=(
    "AutoComplPop|https://github.com/vim-scripts/AutoComplPop"
    "ayu-vim|https://github.com/ayu-theme/ayu-vim"
    "fzf.vim|https://github.com/junegunn/fzf.vim"
    "fzf|https://github.com/junegunn/fzf"
    "gruvbox-material|https://github.com/sainnhe/gruvbox-material"
    "gruvbox|https://github.com/morhetz/gruvbox"
    "horizon.nvim|https://github.com/LunarVim/horizon.nvim"
    "kanagawa.nvim|https://github.com/rebelot/kanagawa.nvim"
    "nerdtree|https://github.com/preservim/nerdtree"
    "undotree|https://github.com/mbbill/undotree"
    "vim-floaterm|https://github.com/voldikss/vim-floaterm"
    "vim-fugitive|https://github.com/tpope/vim-fugitive"
    "vim-signify|https://github.com/mhinz/vim-signify"
)

function asdf() {
    git clone $URL $PACK_DIR/$NAZWA --depth 1
}

for i in ${LISTA[@]}; do
    NAZWA=$(echo $i | cut -d '|' -f 1)
    URL=$(echo $i | cut -d '|' -f 2)
    if [ ! -d "$PACK_DIR/$NAZWA" ]; then
        asdf $NAZWA $URL
    fi
done

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
