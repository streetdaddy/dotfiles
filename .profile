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

