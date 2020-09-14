#!/bin/sh

# Clearnup tmux
pkill tmux


# Backgroup
swaybg -c "#06101a" &


# Notification daemon
mako &

jack_control start

fcitx-autostart &
ckb-next -b &
keepassxc &
chatty &
discord &
element-desktop &


