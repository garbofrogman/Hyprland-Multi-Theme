#!/bin/sh

toggle=/tmp/hypr/.toggle

if [ ! -e $toggle ]; then
  if [ ! -e /tmp/hypr/ ]; then
    mkdir -p /tmp/hypr
  fi
  touch $toggle
  hyprctl keyword animations:enabled 0
  hyprctl keyword animations:enabled 0
else
  rm $toggle
  hyprctl keyword animations:enabled 1
  hyprctl keyword animations:enabled 1
fi
