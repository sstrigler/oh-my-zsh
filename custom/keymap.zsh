# zmv for moving files properly
autoload -U zmv

# edit command line with vi
insert-root-prefix() {
  BUFFER="sudo $BUFFER"
  CURSOR=$(($CURSOR + 5))
}
zle -N insert-root-prefix

vi-cmd-mode-samepos() {
  zle vi-cmd-mode
  zle forward-char
}
zle -N vi-cmd-mode-samepos

autoload -U   edit-command-line
zle -N        edit-command-line

autoload -U   incarg
zle -N        incarg

# vi keybindings. awesome :)
bindkey -v
# bindkey '^A' incarg
bindkey '^E' end-of-line
bindkey '^A' beginning-of-line
bindkey '^F' edit-command-line
bindkey '^N' accept-and-menu-complete 
bindkey '^R' insert-root-prefix
bindkey '^H' run-help
bindkey '^P' push-line
bindkey '^O' get-line
bindkey '^B' accept-and-infer-next-history
bindkey '^T' undo

# ctrl-left & ctrl-right
bindkey '^[Od' backward-word
bindkey '^[Oc' forward-word

bindkey jj vi-cmd-mode-samepos

# history completion up/down keys
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
