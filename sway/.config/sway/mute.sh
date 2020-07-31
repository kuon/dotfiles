#!/bin/bash


pactl set-source-mute jack_in toggle

pkill -SIGRTMIN+10 i3blocks
mumble rpc togglemute
