My home directory profile configuration files
======================================

Includes the following:

* Profile management with Git and Bitbucket (setup instructions below)
* VIM config based on [Steve Francia's][0] awesome spf13 .vimrc
* A long list of Bash Completion scripts
* VCS enabled Bash prompt using vcsprompt

[0]: https://github.com/spf13/spf13-vim

Profile management with Git and Bitbucket (or GitHub)
======================================

The following is a way to manage profile configuration files using Git.

Originally based on [Silas Sewell][1] description.

[1]: http://www.silassewell.com/blog/2009/03/08/profile-management-with-git-and-github/

Features
--------

* Centralized configuration management
* Files live in their native locations (no symbolic linking)
* Home directory is not a Git repo
* All the power of git with a simple alias

Setup dotfiles on a new machine
----------------------------------------

Add your public keys to Bitbucket (if you haven't done so already)

Switch to your home directory
>cd ~

Backup your local configuration files, example:
> mv .bash_profile .bash_profile.bk

Clone your configuration repository
> git clone git@github.com:streetdaddy/dotfiles.git dotfiles.git

Move the git metadata to ~/.config.git
> mv dotfiles.git/.git .dotfiles.git

Enable dotglob
> shopt -s dotglob

Move your configuration files to your home directory
> mv -i dotfiles.git/* .

Delete Git directory
> rmdir dotfiles.git

VCS enabled Bash prompt using vcsprompt
======================================

To install:

> curl -sL https://github.com/djl/vcprompt/raw/master/bin/vcprompt > ~/bin/vcprompt

> chmod 755 ~/bin/vcprompt

Install spf13 vim configuration
================================

There are local configuration files to add and override a few vim settings and install a few extra bundles.

Install the spf13 base configuration by running this command:

> curl http://j.mp/spf13-vim3 -L -o - | sh

