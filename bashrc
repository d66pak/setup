# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# openstack settings
export OS_AUTH_URL=http://keystoneservice.ostk.dv1.vip.corp.gq1.yahoo.com:5000/v2.0
export OS_USERNAME=dtelkar
export OS_TENANT_NAME=dtelkar

# User specific aliases and functions
#PS1="[\[\e[33m\]\u@\h \[\e[32m\]\w\[\e[0m\]] > "

#PS1="["
PS1="[\[\e[33m\]\u@"
#PS1="$PS1@"
if [ "x$YROOT_NAME" != "x" ]; then
  # Yroot Indicator
  PS1="$PS1\[\e[35m\]$YROOT_NAME "
else
  PS1="$PS1\[\e[32m\]\h "
fi

PS1="$PS1\[\e[32m\]\w\[\e[0m\]] > "

HISTCONTROL=ignoredups

export CLICOLOR=1
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LSCOLORS=exfxcxdxbxegedabagacad
export TERM=xterm-256color

# Set the tab title
#echo -ne "\033]2;`hostname`\007"

# Aliases
alias smsg="ssh ransizedry-lm.eglbp.corp.yahoo.com 'write dtelkar'"
#alias grp='grep -r -n $1 . | grep -v .svn | grep --color $1'
alias h='cd $HOME'
alias ..='cd ..'
alias ...='cd ../..'
alias sd='svn diff --diff-cmd ~/deepak/sw/svn-diff-meld'
alias syns='synergys --daemon --config ~/.synergy.conf'
alias gvim='/usr/bin/gvim'
alias ls='ls --color'
alias ns='cd /home/dtelkar/deepak/svn_workspace/messenger/server/partner-migration/trunk/NS'
alias ms='cd /home/dtelkar/deepak/svn_workspace/messenger/server/partner-migration/trunk/MS'

# Functions
function srch()
{
  grep -rn "$1" $2 | grep -v .svn | grep --color "$1";
}

function ppk()
{
  cat /home/dtelkar/.ssh/id_rsa.pub | ssh $1 'cat >> ~/.ssh/authorized_keys'
}

function bcdiff()
{
  /home/y/bin/svn diff --diff-cmd /home/dtelkar/deepak/sw/bcdiff.sh "$1";
}

