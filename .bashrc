# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export EDITOR=vim
alias vi=vim
alias ls='ls -G'
alias ssh2='ssh oliver@192.168.92.131'
alias git-sm='git send-email --smtp-server /usr/bin/msmtp'
