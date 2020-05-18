# Setup dotfiles
git --git-dir=$HOME/.dotfiles --work-tree=$HOME config --local status.showUntrackedFiles no

alias vim="nvim"
alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias sudo="sudo "

HISTFILE=~/.cache/histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
# zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION
# End of lines added by compinstall

# TODO: shouldn't environment variables go in .zshenv?
# TODO: move into $XDG_BASE_DIRECTORY

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
