setxkbmap de

### select video output :
#xrandr --output Virtual-1 --mode 1024x768
#xrandr --output Virtual-1 --mode 1280x1024
xrandr --output Virtual-1 --mode 1440x900
#xrandr --output Virtual-1 --mode 1920x1080

### load Style :
xrdb -load ~/.Xresources

### select window manager:
exec fvwm
