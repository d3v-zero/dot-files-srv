#!/usr/bin/env bash

. $HOME/bin/colors

case $($HOME/bin/detect-os.sh sys) in
    Fedora)
        msg_info "Wykryłem system Fedora"
        FEDORA=1
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
    "nvim"
    "git"
    "rg"
    "fd"
    "fzf"
    "exa"
)

# nazwa komendy
declare -a PAKIETY_UBUNTU=(
    "nvim"
    "git"
    "rg"
    "fd"
    "fzf"
    "exa"
)

if [[ $FEDORA ]]; then
    for i in ${PAKIETY_FEDORA[@]}; do
        check "$i"
    done

    echo
    msg_info "Jeśli brakuje jakiegoś pakietu uruchom polecenie:"
    echo
    echo "sudo dnf install ${PAKIETY_FEDORA[@]}"
    echo
fi

if [[ $UBUNTU ]]; then
    for i in ${PAKIETY_UBUNTU[@]}; do
        check "$1"
    done

    echo
    msg_info "Jeśli brakuje jakiegoś pakietu uruchom polecenie:"
    echo
    echo "sudo apt install ${PAKIETY_UBUNTU[@]}"
fi
