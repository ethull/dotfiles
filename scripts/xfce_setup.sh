#update-alternatives --get-selections
#update-alternatives --set x-terminal-emulator /usr/bin/xterm

xfconf-query -c xfwm4 -p /general/theme -s Midnight-OrangeNight
xfconf-query -c xfwm4 -p /general/cycle_preview -s true
xfconf-query -c xfwm4 -p /general/cycle_raise -s true

# window rearrangement keys similar to rectangle
xfconf-query -n -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Alt>Left" -s tile_left_key #h
xfconf-query -n -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Alt>Down" -s tile_down_key #j
xfconf-query -n -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Alt>Up" -s tile_up_key #k
xfconf-query -n -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Alt>Right" -s tile_right_key #l
xfconf-query -n -c xfce4-keyboard-shortcuts -p "/xfwm4/custom/<Primary><Alt>Return" -s maximize_window_key

xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Shift><Super>greater" -s "mocp --next"
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Shift><Super>less" -s "mocp --previous"
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>slash" -s "mocp --toggle-pause"

xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>Down" -s "pulseaudio-decrease.sh"
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>Up" -s "pulseaudio-increase.sh"

#xfconf-query -c xfce4-keyboard-shortcuts -l -v
#xfconf-query -c xfwm4 -p /general/theme -t int -s 1
