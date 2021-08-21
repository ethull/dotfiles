#update-alternatives --get-selections
#update-alternatives --set x-terminal-emulator /usr/bin/xterm

xfconf-query -c xfwm4 -p /general/theme -s Midnight-OrangeNight
xfconf-query -c xfwm4 -p /general/cycle_preview -s true
xfconf-query -c xfwm4 -p /general/cycle_raise -s true

xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>h" -s tile_left_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>j" -s tile_down_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>k" -s tile_up_key
xfconf-query -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Super>l" -s tile_right_key

xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Shift><Super>greater" -s "mocp --next"
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Shift><Super>less" -s "mocp --previous"
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>slash" -s "mocp --toggle-pause"

xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>Down" -s "pulseaudio-decrease.sh"
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>Up" -s "pulseaudio-increase.sh"

#xfconf-query -c xfce4-keyboard-shortcuts -l -v
#xfconf-query -c xfwm4 -p /general/theme -t int -s 1
