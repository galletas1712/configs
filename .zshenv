export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH" # for Python modules

export RANGER_DEFAULT_LOAD_RC=FALSE
export VISUAL=nvim
export EDITOR=nvim

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export GPG_TTY=$(tty)
export GNUPGHOME="$HOME/.config/gpg"

export GDK_SCALE=2
export QT_SCALE_FACTOR=1

alias vim="nvim"
alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias sudo="sudo "
