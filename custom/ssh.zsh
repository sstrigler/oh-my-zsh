# add password to agent
alias mfgp='ssh-add ~/.ssh/id_dsa_mfg'
alias xelp='ssh-add ~/.ssh/id_dsa_xellent'
alias gitp='ssh-add ~/.ssh/id_dsa_github'

# connect via ssh
alias mfg='ssh mugenguild.com && (/usr/local/bin/checkmails &!)'
alias xel='ssh xellent.ibr.cs.tu-bs.de'
alias oaps='ssh dev.oaps.eu'
alias index1='ssh index1.oaps.eu'

# sftp to mfg
alias mfgf='sftp mugenguild.com'
# invoke sshfs to mfg
alias mfgfs='sshfs mugenguild.com: /home/valodim/mfg'
alias xelfs='sshfs xellent.ibr.cs.tu-bs.de: /home/valodim/xel'
alias oapsfs='sshfs dev.oaps.eu: /home/valodim/oaps'

alias doomftp='lftp ftp://valodim:roflcoptr@134.169.175.94' # 134.169.173.76'

