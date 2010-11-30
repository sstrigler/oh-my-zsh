# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#
setopt rm_star_wait
setopt extendedglob
unsetopt SHARE_HISTORY

bindkey '\e.' insert-last-word

REPORTTIME=3
TIMEFMT="Real: %E User: %U System: %S Percent: %P Cmd: %J"
