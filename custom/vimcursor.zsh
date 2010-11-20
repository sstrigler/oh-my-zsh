zle-keymap-select () {
    if [ $TERM = "rxvt-unicode" ]; then
        if [ $KEYMAP = vicmd ]; then
            echo -ne "\033]12;Red\007"
        else
            echo -ne "\033]12;Grey\007"
        fi
    fi
}
zle -N zle-keymap-select
zle-line-init () {
    zle -K viins
    if [ $TERM = "rxvt-unicode" ]; then
        echo -ne "\033]12;Grey\007"
    fi
    echo -n "[?25l"
}
#zle -N zle-line-init
