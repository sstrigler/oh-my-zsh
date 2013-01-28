# filename suffixes to ignore during completion
fignore=(.o)

# technique
zstyle ':completion:*' completer _complete _correct _approximate

# formatting and messages
zstyle ':completion:*' verbose yes
zstyle ':completion:*' format '%{[33m%}- %{[1m%}%d%{[0m%}'
zstyle ':completion:*:warnings' format '%{[1;31m%}! No matches for: %d%{[0m%}'
zstyle ':completion:*' group-name ''

# colors
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# case-insensitive (all) completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*'

# allow one error in approximate completer
zstyle ':completion:*' max-errors 1

# menu completion only if the prefix is valid
zstyle ':completion:*' insert-unambiguous true

# menu will appear only if there are at least 3 matches
zstyle ':completion:*' menu select=3

# show original command in list
zstyle ':completion:*' original true

# remove trailing slashes after a directory
zstyle ':completion:*' squeeze-slashes true

# on processes completion complete all user processes
zstyle ':completion:*:processes' command 'ps -au$USER'

# add colors to processes for kill completion
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;32'

zstyle ':completion:*' special-dirs true
