#!/bin/bash

killall -q polybar

polybar -c $HOME/.config/polybar/config-new main 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched.."
