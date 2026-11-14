setxkbmap de

## xrandr: zeigt ie angeschlossenen Monitore und die möglichen Auflösungen an
### select video output :
if xrandr | grep -q "Virtual-1 connected"; then
    #xrandr --output Virtual-1 --mode 1024x768
    #xrandr --output Virtual-1 --mode 1280x1024
    xrandr --output Virtual-1 --mode 1440x900
    #xrandr --output Virtual-1 --mode 1920x1080
fi


### load Style :
xrdb -load ~/.Xresources

### select window manager:
exec fvwm
