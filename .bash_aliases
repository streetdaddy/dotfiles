# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias vm-mount='sshfs -o idmap=user root@hq-miles-01:/var/www /home/streetdaddy/vm-var-www && sshfs -o idmap=user root@hq-miles-01:/opt /home/streetdaddy/vm-opt'
alias vm-umount='sudo umount -f vm-var-www && sudo umount -f vm-opt'
