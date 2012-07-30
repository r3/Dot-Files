# Import Xresources
xrdb -merge ~/.Xresources

# Capslock is cruise control for retarded
xmodmap -e 'remove Lock = Caps_Lock'
xmodmap -e 'keysym Caps_Lock = Escape'
xmodmap -e 'add Lock = Caps_Lock'

# Autorun programs
autocutsel -fork &
autocutsel -selection PRIMARY -fork &
feh --bg-fill ~/.wallpaper.jpg &
urxvtd -f -o -q &
xsetroot -cursor_name left_ptr &
exec dbus-launch --sh-syntax --exit-with-session xmonad
#exec dbus-launch openbox
