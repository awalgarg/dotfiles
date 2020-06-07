# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '/'
set __fish_git_prompt_char_stagedstate '>'
set __fish_git_prompt_char_untrackedfiles 'u'
set __fish_git_prompt_char_stashstate 's'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

function fish_user_key_bindings
    # bind shift-up and shift-down to attribute search
    # these are bound to alt-up and alt-down in the defaults
    # but we use them in tmux, so we add these alternatives here
    bind $argv \e\[1\;2A history-token-search-backward
    bind $argv \e\[1\;2B history-token-search-forward
end

function fish_prompt
    set last_status $status
    if test -n "$SSH_CONNECTION"
        set_color $fish_color_cwd_root
        printf '[%s] ' (uname -n)
        set_color normal
    end
    set_color $fish_color_cwd
    printf '%s' (prompt_pwd)
    set_color normal
    printf '%s ' (__fish_git_prompt)
    set_color normal
end

alias uptime='uptime -p'
alias tree='tree -FC'

set fish_long_running_command_threshold_ms 5000
function notify_on_long_running_command_exit --on-event fish_postexec
    set -l saved_status "$status"
    if test "$DISPLAY" = ""; or test "$argv" = ""; or test "$WINDOWID" = (xdotool getactivewindow)
        return
    end
    if test $CMD_DURATION -gt "$fish_long_running_command_threshold_ms"
        notify-send "completed[$CMD_DURATION:$saved_status]: $argv" > /dev/null ^ /dev/null
    end
end
