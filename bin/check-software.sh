#!/usr/bin/env bash

. $HOME/.config/vars
. $BIN_DIR/colors

shopt -s nocasematch

case $($BIN_DIR/detect-os.sh sys) in
    Fedora)
        msg_info "Wykryłem system Fedora"
        FEDORA=1
        SYSTEM="Fedora"
        ;;
    Ubuntu)
        msg_info "Wykryłem system Ubuntu"
        UBUNTU=1
        ;;
esac

# sprawdza czy komenda istnieje
function check() {
    if [[ $(command -v "$1") ]]; then
        msg_ok "$1"
    else
        msg_warn "$1"
    fi
}

# nazwa komendy
declare -a PAKIETY_FEDORA=(
    "nvim|neovim"
    "git|git"
    "rg|ripgrep"
    "fd|fd-find"
    "fzf|fzf"
    "exa|exa"
)

# nazwa komendy
declare -a PAKIETY_UBUNTU=(
    "nvim|neovim"
    "git|git"
    "rg|ripgrep"
    "fd|fd"
    "fzf|fzf"
    "exa|exa"
)

if [[ $FEDORA ]]; then
    PAKIETY_ARRAY=()
    for i in ${PAKIETY_FEDORA[@]}; do
        KOMENDA=$(echo $i | cut -d '|' -f 1)
        PAKIET=$(echo $i | cut -d '|' -f 2)
        PAKIETY_ARRAY+=("$PAKIET")
        check "$KOMENDA"
    done

    echo
    msg_info "Jeśli brakuje jakiegoś pakietu uruchom polecenie:"
    echo
    echo "sudo dnf install ${PAKIETY_ARRAY[@]}"
    echo
fi

if [[ $UBUNTU ]]; then
    PAKIETY_ARRAY=()
    for i in ${PAKIETY_UBUNTU[@]}; do
        KOMENDA=$(echo $i | cut -d '|' -f 1)
        PAKIET=$(echo $i | cut -d '|' -f 2)
        PAKIETY_ARRAY+=("$PAKIET")
        check "$KOMENDA"
    done

    echo
    msg_info "Jeśli brakuje jakiegoś pakietu uruchom polecenie:"
    echo
    echo "sudo apt install ${PAKIETY_ARRAY[@]}"
fi
