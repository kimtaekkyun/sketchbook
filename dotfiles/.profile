# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

cowsay "Hello Taekkyun. Your profile has been sourced!"
#fortune
xcowfortune &
export PS1='\[\e[1;32m\]\u\[\e[0;39m\]@\[\e[1;36m\]\h\[\e[0;39m\]:\[\e[1;33m\]\w\[\e[0;39m\]\[\e[1;35m\]$(__git_ps1 " (%s)")\[\e[0;39m\] \[\e[1;37m\]\[\e[0;39m\]$ '
cd() { builtin cd "$@" && ls; }
# tree
alias t2='tree -L 2'
alias t3='tree -L 3'
alias t4='tree -L 4'
# ls
alias ll='ls -alFh --color=auto --group-directories-first'
alias l='ls -lFh --color=auto --group-directories-first'
# git
alias gpush='git push origin HEAD:refs/for/oms_release'
alias gpushdrafts='git push origin HEAD:refs/drafts/oms_release'
alias gs='git status'
alias screenserial='/dev/ttyUSB0 115200'
alias gresetclean='git reset --hard HEAD && git clean -xdf'
# cd
alias cvlib='cd ~/OMS/cvlib'
# ssh
alias oms='ssh -p 9999 root@10.157.184.134'
alias diablo='ssh taekkyunkim@10.157.137.1'
# etc
alias findsudo='getent group sudo | cut -d: -f4'
alias tarx='tar -xzvf'
alias tarc='tar -czvf'
alias maketags='make ARCH=arm64 tags cscope'
alias rm='rm -i'
