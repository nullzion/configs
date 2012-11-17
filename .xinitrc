#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xset -dpms
xset s off
xset b 100 80 70
xrdb -merge ~/.Xresources
feh --bg-scale /home/nullzion/Pictures/Juturna\ 2.png &
#xcompmgr -c -C -t-5 -l-5 -r5.2 -o.79 -f &
compton -f -l .5 -t .5 -c -r 4 -o .4 --shadow-exclude 'i:wi:terminator' &
xsetroot -cursor_name left_ptr
exec qtile-session -l WARNING
