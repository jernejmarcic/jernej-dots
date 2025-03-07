if uwsm check may-start; and uwsm select
exec systemd-cat -t uwsm_start uwsm start default
end

if status is-interactive
# Commands to run in interactive sessions can go here
starship init fish | source
end
#
#Start tmux only if not already inside tmux

# Greeter

# LSD aliases
alias ls='lsd'
alias l="lsd -lah"

# YEAR OF THE LINUX DESKTOP
alias $(date "+%Y")='echo YEAR OF THE LINUX DESKTOP!'

# Pacman stuff
alias pm='sudo pacman'

# alias school='cd ~/Documents/One-Vault/GimB/'

# Binary path
set -x PATH $PATH /home/$HOME/.cargo/bin /home/$HOME/.local/share/gem/ruby/3.0.0/bin /home/jernej/CLionProjects/oxiplayer/target/debug /home/jernej/CLionProjects/rustyplayer/target/debug /home/jernej/.local/bin $HOME/Scripts /home/jernej/Documents/Lancaster/Software Engineering/micro-tools/aliases.sh

export PATH="$HOME/bin:$PATH"

alias py='ipython3'

export LC_ALL=C.UTF-8

export LANG=en_US.UTF-8
export LC_NUMERIC=en_GB.UTF-8
export LC_TIME=en_GB.UTF-8
export LC_MONETARY=sl_SI.UTF-8
export LC_PAPER=en_GB.UTF-8
export LC_NAME=sl_SI.UTF-8
export LC_ADDRESS=sl_SI.UTF-8
export LC_TELEPHONE=sl_SI.UTF-8
export LC_MEASUREMENT=en_GB.UTF-8
export LC_IDENTIFICATION=sl_SI.UTF-8

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

alias microbuild="/home/jernej/Documents/Lancaster/Software\ Engineering/micro-tools/microbuild.sh"
alias microinit="/home/jernej/Documents/Lancaster/Software\ Engineering/micro-tools/microinit.sh"
alias microupdate="/home/jernej/Documents/Lancaster/Software\ Engineering/micro-tools/microupdate.sh"
alias microflash="/home/jernej/Documents/Lancaster/Software\ Engineering/micro-tools/microflash.sh"
