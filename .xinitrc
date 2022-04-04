#!/bin/sh

userresources=$HOME/.Xresources
sysresources=/etc/X11/xinit/.Xresources

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

picom --experimental-backends &
nitrogen --restore &
dunst &
emacs --daemon &
dwmblocks &
redshift -O 4500K &
exec dwm
pulseaudio --start &
