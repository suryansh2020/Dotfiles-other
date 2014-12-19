#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
        for f in /etc/X11/xinit/xinitrc.d/*; do
                [ -x "$f" ] && . "$f"
        done
        unset f
fi

# update X resources database
xrdb -merge ~/.Xresources

# run terminal
exec urxvt

# swap caps lock and control key
xmodmap ~/dotfiles-other/.speedswapper

# run window manager
exec i3
