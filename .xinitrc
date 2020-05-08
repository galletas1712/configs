setxkbmap -layout us,th -option ctrl:nocaps
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec bspwm
