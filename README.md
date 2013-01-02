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


First time setup
----------------

> cd ~

> mkdir .config.git

> echo "alias config='git --git-dir=$HOME/.config.git/ --work-tree=$HOME'" >> .bashrc

> source .bashrc

> config add .bash_profile .bashrc .bash_aliases

> config commit -m 'Initial commit'

> config remote add origin git@bitbucket.com:BITBUCKET_USERNAME/config.git

> config push origin master

If you get an error when running config pull to the effect of You asked me to pull without... run the follow:
> echo -e '[branch "master"]\n  remote = origin\n  merge = refs/heads/master' >> ~/.config.git/config


Setup configuration on different machine
----------------------------------------

Add your public keys to Bitbucket (if you haven't done so already)

Switch to your home directory
>cd ~

Backup your local configuration files, example:
> mv .bash_profile .bash_profile.bk

Clone your configuration repository
> git clone git@bitbucket.org:BITBUCKET_USERNAME/config.git config.git

Move the git metadata to ~/.config.git
> mv config.git/.git .config.git

Enable dotglob
> shopt -s dotglob

Move your configuration files to your home directory
> mv -i config.git/* .

Delete Git directory
> rmdir config.git

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


