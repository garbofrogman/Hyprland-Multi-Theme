#!/bin/bash

entries="Gruvbox-Dark\nGruvbox-Light\nMocha\nLatte\nNord\nSolarized\nTokyo-Night\nDracula\nEverforest\nSummer-Day\nSummer-Night"
source='source = ~/.config/hypr/themes/'
hyprland-conf=$HOME/.config/hypr/hyprland.conf
# delete-line="$(sed -i '1d' ~/.config/hypr/hyprland.conf)"

selected=$(echo -e $entries | wofi --dmenu $2 --style ~/.config/wofi/themes/$1.css --hide-scroll --cache-file /dev/null)

case $selected in
Gruvbox-Dark)
  notify-send "Gruvbox-Dark"
  sed -i '/\%\%\%\%\%/{n;s/.*/source = ~\/.config\/hypr\/themes\/gruvbox\/gruvbox.conf/}' ~/.config/hypr/hyprland.conf
  ;;
Gruvbox-Light)
  notify-send "Gruvbox-Light"
  sed -i '/\%\%\%\%\%/{n;s/.*/source = ~\/.config\/hypr\/themes\/gruvbox-light-hard\/gruvbox.conf/}' ~/.config/hypr/hyprland.conf
  ;;
Latte)
  notify-send "Latte"
  sed -i '/\%\%\%\%\%/{n;s/.*/source = ~\/.config\/hypr\/themes\/catppuccin-latte\/catppuccin-latte.conf/}' ~/.config/hypr/hyprland.conf
  ;;
Mocha)
  notify-send "Mocha"
  sed -i '/\%\%\%\%\%/{n;s/.*/source = ~\/.config\/hypr\/themes\/mocha\/mocha.conf/}' ~/.config/hypr/hyprland.conf
  ;;
Nord)
  notify-send "Nord"
  sed -i '/\%\%\%\%\%/{n;s/.*/source = ~\/.config\/hypr\/themes\/nord\/nord.conf/}' ~/.config/hypr/hyprland.conf
  ;;
Solarized)
  notify-send "Solarized"
  sed -i '/\%\%\%\%\%/{n;s/.*/source = ~\/.config\/hypr\/themes\/solarized\/solarized.conf/}' ~/.config/hypr/hyprland.conf
  ;;
Everforest)
  sed -i '/\%\%\%\%\%/{n;s/.*/source = ~\/.config\/hypr\/themes\/everforest\/everforest.conf/}' ~/.config/hypr/hyprland.conf
  notify-send "Everforest"
  ;;
Summer-Day)
  sed -i '/\%\%\%\%\%/{n;s/.*/source = ~\/.config\/hypr\/themes\/summer-day\/summer-day.conf/}' ~/.config/hypr/hyprland.conf
  notify-send "Summer-Day"
  ;;
Summer-Night)
  sed -i '/\%\%\%\%\%/{n;s/.*/source = ~\/.config\/hypr\/themes\/summer-day\/summer-day.conf/}' ~/.config/hypr/hyprland.conf
  notify-send "Summer-Night"
  ;;
esac

hyprctl reload
