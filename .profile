# WARNING: File managed by Puppet

# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

export VISUAL=/usr/bin/vim
export EDITOR=/usr/bin/vim

mesg n


##
# Your previous /Users/mtillinger/.profile file was backed up as /Users/mtillinger/.profile.macports-saved_2013-03-06_at_16:20:10
##

# MacPorts Installer addition on 2013-03-06_at_16:20:10: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/mtillinger/.gvm/bin/gvm-init.sh" && -z $(which gvm-init.sh | grep '/gvm-init.sh') ]] && source "/Users/mtillinger/.gvm/bin/gvm-init.sh"

##
# Your previous /Users/mtillinger/.profile file was backed up as /Users/mtillinger/.profile.macports-saved_2013-08-30_at_21:45:06
##

# MacPorts Installer addition on 2013-08-30_at_21:45:06: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/mtillinger/.profile file was backed up as /Users/mtillinger/.profile.macports-saved_2013-11-22_at_15:25:02
##

# MacPorts Installer addition on 2013-11-22_at_15:25:02: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

