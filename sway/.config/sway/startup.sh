#!/bin/sh

# Clearnup tmux
pkill tmux


# Backgroup
swaybg -c "#06101a" &


# Notification daemon
mako &

# Audio handling
pulseaudio --daemonize
jack_control start
cadence-pulse2jack
pactl set-default-sink jack_out


fcitx-autostart &
ckb-next -b &
syncthing-gtk &
keepassxc &

