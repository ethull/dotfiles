pactl set-sink-volume $(pactl list sinks | grep RUNNING -B 1 | sed '1!d' | cut -c7) +5%
