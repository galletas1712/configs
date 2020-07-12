setxkbmap -layout us,th -option ctrl:nocaps -option grp:toggle
xcape -t 150 -e 'Control_L=Escape'
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec bspwm
