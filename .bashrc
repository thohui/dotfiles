#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

export PATH="$PATH:/home/seaky/.local/bin:/home/seaky/.dotnet"

eval "$(fzf --bash)"
eval "$(starship init bash)"

alias vi=nvim
alias vim=nvim

export EDITOR=nvim
