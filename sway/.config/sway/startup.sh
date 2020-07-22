#!/bin/sh

# Clearnup tmux
pkill tmux


# Backgroup
swaybg -c "#06101a" &


# Notification daemon
mako &

# Audio handling
jackd -R -P 99 -c system -d alsa -d hw:MGXU,0 -n 3 -p 1024 -r 96000 |systemd-cat -t jack &
pulseaudio --daemonize

pactl load-module module-jack-sink channels=2
pactl load-module module-jack-source channels=2
pacmd set-default-sink jack_out
pacmd set-default-source jack_in


fcitx-autostart &
ckb-next -b &
syncthing --no-browser &
keepassxc &

