#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
umask 002

# Prompt shows exit code of previous command (see "$?")
PS1='\[\e[0;32m\]\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\][$?] \$ \[\e[m\]\[\e[1;37m\] '
if [[ "$TERM" == "xterm" || "$TERM" == "xterm-color" ]]; then
	PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
fi
# exports
export EDITOR="vim"
export SYSTEMD_PAGER='cat'

# aliases
alias ls='/bin/ls -la --color=auto'
alias lsf='/bin/ls -1AU --color=none'
alias v='vim'
alias vi='vim'
alias y='yaourt'
alias tmux='tmux -2 attach -t 0 2>/dev/null || tmux -2'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
