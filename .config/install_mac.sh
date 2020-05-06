# Zsh
rm ~/.zshrc
ln -s ~/config/zshrc ~/.zshrc

# Alacritty
rm -r ~/.config/alacritty
ln -s ~/config/alacritty ~/.config/alacritty

# Tmux
rm ~/.tmux.conf
ln -s ~/config/tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.local/tmux-plugins/tpm

# Vim
brew install npm yarn fzf jq ctags python3 rustup
pip3 install neovim yapf pylint flake8
rm -r ~/.config/nvim
ln -s ~/configs/vim ~/.config/nvim
rustup component add rls rust-analysis rust-src
nvim +PlugInstall
nvim +GoInstallBinaries

# Ranger 
rm -r ~/.config/ranger
ln -s ~/configs/ranger ~/.config/ranger
