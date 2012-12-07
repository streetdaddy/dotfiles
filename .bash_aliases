# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lls="ls -FlhSr"
alias llt="ls -Flhtr"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias vm-mount='sshfs -o idmap=user -o nonempty root@hq-miles-d02:/var/www/ws.visualdna.com /var/www/ws.visualdna.com && sshfs -o idmap=user -o nonempty root@hq-miles-d02:/opt/api /opt/api && sshfs -o idmap=user -o nonempty root@hq-miles-d02:/usr/share/php /home/streetdaddy/usr-share-php && sshfs -o idmap=user -o nonempty root@hq-miles-d02:/var/www/adj.visualdna.com /var/www/adj.visualdna.com'
alias vm-umount='sudo umount -f /opt/api && sudo umount -f /var/www/ws.visualdna.com && sudo umount -f /home/streetdaddy/usr-share-php && sudo umount -f /var/www/adj.visualdna.com'
alias vms="ssh root@hq-mtillinger-d02 -A"

alias ws='cd /var/www/ws.visualdna.com/'
alias api='cd /opt/api/'
#alias reb='TMP=`pwd` && ws && ./scripts/rebuildAndFlush && cd $TMP'
alias reb='TMP=`pwd` && api && ./deploy-scripts/run-on-all-targets/pre.d/20-standard-phing && ws && ./deploy-scripts/run-on-all-targets/pre.d/20-standard-phing && ./deploy-scripts/run-on-all-targets/post.d/20-restart-apache-and-flush-twig && cd $TMP'
alias gq='/opt/api/scripts/cassandra/getRow -cf quiz -uid '
alias ga='/opt/api/scripts/cassandra/getRow -cf apiAccount -uid '
alias wserr='tail -f /var/log/apache2/ws.error.log &'

alias c="cd"
alias c.="cd .."
alias c..="cd ../.."
alias c...="cd ../../.."
alias c....="cd ../../../.."

alias g="git"

# Disk usage sort by size in human readable format
alias dus="du -hs * | sort -h"

# Toggle window opacity in Compiz (to fix fullscreen flash video). 
# Value set is for _my_ opacity_values.  Use with care.
alias opon="gconftool-2 -s -t list --list-type=int /apps/compiz-1/plugins/obs/screen0/options/opacity_values [90,90,90,90,100,0]"
alias opoff="gconftool-2 -s -t list --list-type=int /apps/compiz-1/plugins/obs/screen0/options/opacity_values [90,100,90,90,100,0]"
