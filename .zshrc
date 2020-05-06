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

git --git-dir=$HOME/.dotfiles --work-tree=$HOME config --local status.showUntrackedFiles no

alias vim="nvim"
alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

# TODO: screw compinstall and do it yourself
# TODO: shouldn't environment variables go in .zshenv?
# TODO: move into $XDG_BASE_DIRECTORY
