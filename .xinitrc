setxkbmap -layout us,th -option ctrl:nocaps -option altwin:swap_alt_win -option grp:rwin_toggle
xcape -t 150 -e 'Control_L=Escape'
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec bspwm
