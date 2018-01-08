# dotfiles

I use these on Arch Linux, Void Linux, and some Ubuntu machines. Use at
your own risk, of course. There is a branch for 768p screens but it is
not maintained anymore.

Includes configurations for:

- i3wm
- X11
- zathura
- bash
- feh
- fish
- mpv
- ranger
- git
- vim
- zsh
- st
- tmux

Has some shell scripts in `bin/` expected to be in `$PATH`.

Wallpaper was provided by someone in #voidlinux on freenode, edited a
bit for personal usage.

## tmux

All bindings listed below are global. they don't require the prefix.

- `alt-t` new terminal, horizontal split
- `alt-shift-t` new terminal, vertical split
- `alt-{arrow-key}` focus change in arrow direction
- `alt-shift-{arrow-key}` shift pane in arrow direction
- `alt-f` toggle pane fullscreen-ness
- `alt-shift-q` kill pane
- `alt-d` detach pane
- `alt-n` new window (or tab or whatever you like to call it)
- `alt-{1-9}` switch to nth window
- `alt-shift-{1-9}` move pane to nth window
- `alt-tab` next window
- `alt-e` create new split and open vim inside it exploring current
  directory

That covers 90% of the actions we generally do, and for the rest 10%,
the prefix is `alt-grave` and the usual default bindings that come with
tmux.

Additionally mouse mode is enabled, and panes which capture mouse events
receive them transparently. So scrolling works both in ncurses apps and
regular panes.

# Author

Awal Garg <awalgarg@gmail.com>

