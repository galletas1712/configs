export ZDOTDIR="$HOME/.config/zsh"

export PATH="/usr/local/bin:/usr/bin:/bin"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH" # for Python modules

if [[ `uname` == "Darwin" ]] then
    export PATH="$HOME/Library/Python/3.8/bin:$PATH"
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$($HOME'/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "$HOME/opt/miniconda3/etc/profile.d/conda.sh" ]; then
            . "$HOME/opt/miniconda3/etc/profile.d/conda.sh"
        else
            export PATH="$HOME/opt/miniconda3/bin:$PATH"
        fi
    fi
    unset __conda_setup
    # <<< conda initialize <<<
fi


export RANGER_DEFAULT_LOAD_RC=FALSE
export VISUAL=nvim
export EDITOR=nvim

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export GDK_SCALE=2
export QT_SCALE_FACTOR=1

if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then . $HOME/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
