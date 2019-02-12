#!/bin/bash
# /etc/X11/xinit/xinitrc (now ~/.xinitrc)
#
# global xinitrc file, used by all X sessions started by xinit (startx)
#
# invoke global X session script
#. /etc/X11/Xsession

xrdb -merge $HOME/.Xresources & #update x resources db
#   xbindkeys & #key shortcuts
#   start-pulseaudio-x11 & #start audio
#   #urxvtd -q -o -f & #rxvt-unicode daemon
#   urxvtd & #rxvt-unicode daemon
#   #unclutter -root -idle 2.5 & #hide mouse cursor
#   unclutter -idle 2 & #hide mouse cursor
#   xautolock -time 9 -locker $HOME/.i3locker.sh -notify 60 -notifier "notify-send 'Locking soon'" &
#   $HOME/.clipmenu/clipmenud &
#   #parcellite -n -d & #clipboard
#   #parcellite -n & #clipboard
#   syndaemon -i 2 -k -t -d &	#disable trackpad until typing is finished
#   hsetroot -solid "#282828" &	#set wallpaper to solid color # is this working?
#   xmodmap $HOME/.xmodmap &
#   dunst -config $HOME/.dunstrc &
#   redshift &

exec i3	#start window manager
