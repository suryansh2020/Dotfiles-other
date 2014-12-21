#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
        for f in /etc/X11/xinit/xinitrc.d/*; do
                [ -x "$f" ] && . "$f"
        done
        unset f
fi

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap

# update X resources database
if [ -f $userresources ]; then
    xrdb -merge $userresources
fi

# update default key mappings
if [ -f $usermodmap ]; then
    xmodmap $usermodmap
fi

# run window manager
# see [1] for a nice explanation of .xinitrc
exec i3

# [1]: http://fluxbox.sourceforge.net/docbook/en/html/app-setup.html
