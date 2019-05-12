case $- in
    *i*) [[ -n "$INTERACTIVE_SHELL" ]] && [[ -z "$FORCE_BASH" ]] && exec "$INTERACTIVE_SHELL" ;;
	# If not running interactively, don't do anything
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

alias ls='ls --color=auto --indicator-style=classify'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -lh'
alias tree='tree -FC'
alias uptime='uptime -p'

function __bash__prompt {
	local RED="\[\033[0;31m\]"
	local GREEN="\[\033[0;32m\]"
	local RESET="\[\033[0m\]"
	if [ -n "$SSH_CONNECTION" ]; then
		printf '%s[%s]%s ' "$RED" "$(uname -n)" "$RESET"
	fi
	printf '%s\w%s $ ' "$GREEN" "$RESET"
}

export PS1="$(__bash__prompt)"
