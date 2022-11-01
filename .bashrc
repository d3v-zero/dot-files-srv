# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi

unset rc

[ -f "$HOME/.config/vars" ] && source "$HOME/.config/vars"
[ -f "$HOME/.config/aliasy" ] && source "$HOME/.config/aliasy"

# wyłączenie ctrl-s i ctrl-q
stty -ctlecho

# włączenie vi mode
set -o vi

# historia poleceń
shopt -s histappend
HISTCONTROL=ignoreboth
HISTFILESIZE=100000
HISTSIZE=100000
HISTTIMEFORMAT='%F %T'
PROMPT_COMMAND='history -a'  # zapisuje historię poleceń od razu

# ustawienia GnuPG
eval $(gpg-agent --daemon)
GPG_TTY=$(tty)
export GPG_TTY

# export LANG=pl_PL.UTF-8

[ -f /usr/share/fzf/completion.bash ] && source /usr/share/fzf/completion.bash

[ -f /usr/share/fzf/key-bindings.bash ] && source /usr/share/fzf/key-bindings.bash

source <(gopass completion bash)

eval "$(starship init bash)"

eval "$(zoxide init bash)"
