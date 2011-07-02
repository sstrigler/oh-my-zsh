# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#
setopt rm_star_wait
setopt extendedglob
unsetopt SHARE_HISTORY

bindkey '\e.' insert-last-word
bindkey "^N" accept-and-menu-complete

REPORTTIME=3
TIMEFMT="Real: %E User: %U System: %S Percent: %P Cmd: %J"

export LESS_TERMCAP_mb=$'\E[01;35m'
export LESS_TERMCAP_md=$'\E[01;35m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

export EDITOR=vim
export LESS="-i -R"
