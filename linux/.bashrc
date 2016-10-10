# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# golang support
export GOPATH=$HOME/ws/go
export PATH=/usr/local/bin:/usr/local/go/bin:$PATH:$GOPATH/bin
if [ -d ~/ws/mytools/github ]; then
	export PATH=~/ws/mytools/github:$PATH
fi

set -o vi
export EDITOR=vim
alias vi=vim
#alias ls='ls -G'
#alias ls='ls --color'
alias ssh2='ssh oliver@192.168.92.131'
alias git-sm='git send-email --smtp-server /usr/bin/msmtp'
alias git-cm='git commit -s'

# For easy ssh access
#alias sshvm='ssh <id>@<ip>'

# For VM serial console access
#alias socat1='socat -d -d /Users/yango/tmp/com1 TCP4-LISTEN:9999 &'
