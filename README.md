# dotfiles

(ir)relevant stuff I us

- Arch Linux
- i3wm
- fish shell
- fzf
- ranger
- tmux
- vim
- Sublime Text 3
- rofi
- sakura
- FontAwesome font
- Inconsolata font
- irssi
- alsa
- firefox-developer
- google-chrome-unstable
- tree
- git
- zathura
- pathogen.vim
- seoul256.vim
- goyo.vim
- limelight.vim

# stuff

wallpapers and lockscreen generated at <http://demon000.github.io/archwg/> with the following config:

- Width: 1366
- Height: 768
- Background: #2d2d2d
- Logo size: 128px
- Logo color: #eee
- Font size: 32px
- Font family: Inconsolata
- Text color: #eee
- Text: `<br>{some text here}`

icons for status bar in i3 are fontawesome glyphs

scripts in `bin` are handwritten for ease. for example, copying selected text in vim is just `:w !ctrlc` and pasting from clipboard is `r !ctrlv` for X11 clipboard.

# shortcuts

## tmux

all bindings listed below are global. they don't require the prefix.

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
- `alt-e` create new split and open vim inside it exploring current directory

that covers 90% of the actions we generally do, and for the rest 10%, the prefix is `alt-grave` and the usual default bindings that come with tmux.

additionally mouse mode is enabled, and panes which capture mouse events recieve them transparently. so scrolling works both in ncurses apps and regular panes.

## vim

dunno I just copy pasted bits from the internet until it worked, but hey, I use vim!

# license

wtfpl

# author

Awal Garg <awalgarg@gmail.com>
