#!/bin/sh

# set keyboard layout to colemak (before loading ~/.Xmodmap)
setxkbmap -model pc104 -layout us

# merge in defaults and keymaps
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
userbindkeys=$HOME/.xbindkeysrc
trash=$HOME/.local/share/Trash

if [ -f $sysresources ]; then xrdb -merge $sysresources; fi
if [ -f $sysmodmap ]; then xmodmap $sysmodmap; fi
if [ -f $userresources ]; then xrdb -merge $userresources; fi
if [ -f $usermodmap ]; then xmodmap $usermodmap; fi
if [ -f $userbindkeys ]; then xbindkeys -p; fi

# janitor
if [ -d $trash ]; then rm -rf ${trash}/*; fi

# locale
# LC_ALL will always override LANG and all the other LC_* variables,
# whether they are set or not
export LC_ALL=en_US.UTF-8

# start window manager
#exec /usr/X11R7/bin/ctwm -W
exec openbox-session
