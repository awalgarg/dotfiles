set PATH $HOME/bin $PATH
set -x LANG 'en_US.UTF-8'
set -x EDITOR vim

if which ssh-agent > /dev/null ^ /dev/null
	if not pgrep -u $USER ssh-agent > /dev/null ^ /dev/null
		ssh-agent -c > ~/.ssh-agent-details
		eval (cat ~/.ssh-agent-details) > /dev/null ^ /dev/null
		find ~/.ssh/ -name '*rsa' -exec ssh-add '{}' \; > /dev/null ^ /dev/null
	else
		eval (cat ~/.ssh-agent-details) > /dev/null ^ /dev/null
	end
end

