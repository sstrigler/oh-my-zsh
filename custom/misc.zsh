# cd to home and one path up directly
cdpath=(~ .. ~/space)

## search for various types or README file in dir and display them in $PAGER
readme ()
{
    local files
    files=(./(#i)*(read*me|lue*m(in|)ut)*(ND))
    if (($#files))
    then $PAGER $files
    else
    print 'No README files.'
    fi
}

# If nonnegative, commands whose combined user and system execution times
# (measured in seconds) are greater than this value have timing
# statistics printed for them.
REPORTTIME=2

spectrum()
{
  for color in {0..255}; do echo "${FG[$color][3,-3]} $color" ; done
}

function mkcd() { mkdir "$1" && cd "$1"; }

function calc() { echo "$*" | bc; }

function hex2dec { awk 'BEGIN { printf "%d\n",0x$1}'; }
function dec2hex { awk 'BEGIN { printf "%x\n",$1}'; }

# Colorize stderr in red. Very useful when looking for errors. Thanks to
# http://gentoo-wiki.com/wiki/Zsh for the basic script and Mikachu in #zsh on
# Freenode (2010-03-07 04:03) for some improvements (-r, printf). It's not yet
# perfect and doesn't work with su and git for example, but it can handle most
# interactive output quite well (even with no trailing new line) and in cases
# it doesn't work, the E alias can be used as workaround.
exec 2>>(while read -r -k -u 0 line; do
    printf '\e[91m%s\e[0m' "$line";
    print -n $'\0';
done &)
