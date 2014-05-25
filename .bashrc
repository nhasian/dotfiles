#
# ~/.bashrc
#

# enables bash history in tmux
# export PROMPT_COMMAND="history -a; history -n"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# TMUX
# if which tmux 2>&1 >/dev/null; then
    #if not inside a tmux session, and if no session is started, start a new session
#    test -z "$TMUX" && (tmux attach || tmux new-session)
# fi

alias ls='ls --color=auto'
alias l.='ls -d .* --color=auto'
alias ll='ls -l --color=auto'
alias vi='vim'
alias grep='grep --color=auto'
alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'

PS1='[\u@\h \W]\$ '

export EDITOR="nano"
HISTCONTROL=ignoreboth

xset dpms 600

# adds color to man pages
man() {
    env LESS_TERMCAP_mb=$(printf "\e[1;31m") \
	LESS_TERMCAP_md=$(printf "\e[1;31m") \
	LESS_TERMCAP_me=$(printf "\e[0m") \
	LESS_TERMCAP_se=$(printf "\e[0m") \
	LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
	LESS_TERMCAP_ue=$(printf "\e[0m") \
	LESS_TERMCAP_us=$(printf "\e[1;32m") \
	man "$@"
}

# easy mounting of android devices
# alias android-connect="mtpfs -o allow_other /mnt"
# alias android-disconnect="fusermount -u /mnt"

xrdb ~/.Xresources
