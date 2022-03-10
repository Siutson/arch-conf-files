#!/bin/sh

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/pipewire-media-session &

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

setxkbmap -option caps:escape
setxkbmap pl &
slstatus &
#$HOME/.screenlayout/screens.sh &
#$HOME/.screenlayout/anti-screen-tearing.sh &
nitrogen --restore &
picom --experimental-backends &
#exec dwm
exec dbus-launch dwm
