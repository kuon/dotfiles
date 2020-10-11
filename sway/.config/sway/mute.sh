#!/bin/bash


pactl set-source-mute alsa_input.usb-Yamaha_Corporation_MG-XU-00.iec958-stereo toggle
pkill -SIGRTMIN+10 i3blocks
mumble rpc togglemute
