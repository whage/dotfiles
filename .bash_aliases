#Function to deal with the annoying sublime errors
#Send annoying .output logs to /dev/null
function sblm
{
    nohup ~/SublimeText2/sublime_text $1 >/dev/null 2>&1 &
} 

#Call my sublime function
alias sublime="sblm"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# project dirs
alias webroot="cd /media/whage/New\ System/www"
alias uwebroot="cd /var/www"

# git
alias gs="git status"

# enforce correct resolution for both monitors
function set_resolution {
    xrandr --newmode "1680x1050_60.00"  146.25  1680 1784 1960 2240  1050 1053 1059 1089 -hsync +vsync
    xrandr --addmode VGA-0 1680x1050_60.00
    xrandr --output VGA-0 --mode 1680x1050_60.00
}
