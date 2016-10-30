# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls='ls --color=auto --indicator-style=classify'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -lh'
alias tree='tree -FC'
alias uptime='uptime -p'

export PATH="$HOME/bin:$PATH"
export LANG='en_US.UTF-8'
export EDITOR='vim'
export TERMINAL='sakura'

autoload -Uz colors && colors
function __zsh__prompt {
	local RED="\[\033[0;31m\]"
	local RED='%{$fg[red]%}'
	local GREEN='%{$fg[green]%}'
	local RESET='$reset_color'
	if [ -n "$SSH_CONNECTION" ]; then
		printf '%s[%s]%s ' "$RED" "$(uname -n)" "$RESET"
	fi
	printf '%s%%~%s %%%% ' "$GREEN" "$RESET"
}

type prompt &> /dev/null && prompt off
setopt PROMPT_SUBST
PROMPT="$(__zsh__prompt)"
