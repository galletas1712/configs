# Zsh
rm ~/.zshrc
ln -s ~/config/zshrc ~/.zshrc

# Alacritty
rm -r ~/.config/alacritty
ln -s ~/config/alacritty ~/.config/alacritty

# Tmux
rm ~/.tmux.conf
ln -s ~/config/tmux.conf ~/.tmux.conf

# Vim
brew install ctags python3 # RUSTUP
pip3 install neovim yapf pylint flake8
rm -r ~/.config/nvim
ln -s ~/configs/vim ~/.config/nvim
rustup component add rls rust-analysis rust-src
nvim +PlugInstall
nvim +GoInstallBinaries

# Ranger 
rm -r ~/.config/ranger
ln -s ~/configs/ranger ~/.config/ranger
