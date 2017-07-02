#!/bin/sh
lock() {
    i3lock --color '#1f222d'
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
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
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown|screenshot}"
        exit 2
esac

exit 0