# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'


function fish_prompt
  set last_status $status

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)

  set_color normal
end

set PATH $HOME/bin $PATH
setenv EDITOR vim

if which ssh-agent > /dev/null ^ /dev/null
	if not pgrep -u $USER ssh-agent > /dev/null ^ /dev/null
		ssh-agent -c > ~/.ssh-agent-details
		eval (cat ~/.ssh-agent-details) > /dev/null ^ /dev/null
		ssh-add ~/.ssh/*rsa > /dev/null ^ /dev/null
	else
		eval (cat ~/.ssh-agent-details) > /dev/null ^ /dev/null
	end
end

alias uptime='uptime -p'
alias tree='tree -FC'

