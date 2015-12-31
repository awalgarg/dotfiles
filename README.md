# dotfiles (Awal Garg)

This, I am publishing for the benefit of one and all, most specially myself.

Presently it just includes the i3 and i3status config.

The way I setup my dotfile sharing is (approximately):
```sh
mkdir -p ~/Documents/dotfiles/.config/i3
cd ~/.config/i3
mv * ~/Documents/dotfiles/.config/i3
ln -s !$/* .
```

And then just `git init && git add .` inside the dotfiles directory.

Right now I am using the FontAwesome font for the little icon hints which help
me a lot, specially with identifying windows in tabbed and stacking mode.

One neat thing from my i3 config is:
- `Mod+T` to create a new workspace with custom name
- `Mod+Shift+T` to shift a window to it
- `Mod+T` in resize mode lets you rename the current workspace

This is obviously achieved with `i3input`.

Also have a "maintainence" workspace tied to `Mod+M` with a special cog icon
as the label.

Screenshot: http://imgur.com/csbLRFW

`Mod+F1` is tied to opening `ranger` in `i3-sensible-terminal` (switches used
for *sakura*, you'd probably need to edit that if you don't use sakura).

The wallpaper I just found from googling "arch wallpapers". I hold no rights.

### License - WTFPL

