setxkbmap -layout us,th -option ctrl:nocaps -option grp:toggle
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec bspwm
