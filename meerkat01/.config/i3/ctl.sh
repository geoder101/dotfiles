#!/bin/sh

init() {
    feh --bg-scale ~/Pictures/Matrix_Code.png
    for i in {0..1}; do pactl set-sink-volume $i 60%; done
    numlockx on
    i3-msg 'workspace ctl;
            exec arandr;
            exec pavucontrol;
            workspace 2'
}

lock() {
    i3lock --color '#1f222d'
}

case "$1" in
    init)
        init
        ;;
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    exit)
        i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'
        ;;
    suspend)
        lock && systemctl suspend
        ;;
    hibernate)
        lock && systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    screenshot)
        [ -d ~/Pictures/Screenshots ] || mkdir ~/Pictures/Screenshots
        import ~/Pictures/Screenshots/Screenshot_$(date +%Y-%m-%d-%H-%M-%S).png
        ;;
    volup)
        for sink in {0..1}; do pactl set-sink-volume $sink +5%; done
        ;;
    voldown)
        for sink in {0..1}; do pactl set-sink-volume $sink -5%; done
        ;;
    volmute)
        for sink in {0..1}; do pactl set-sink-mute $sink toggle; done
        ;;
    *)
        echo "Usage: $0 <cmd>"
        exit 2
esac

exit 0
