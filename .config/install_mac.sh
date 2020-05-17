git clone https://github.com/tmux-plugins/tpm ~/.local/tmux-plugins/tpm

# Vim
brew install npm yarn fzf jq ctags python3 rustup
pip3 install neovim yapf pylint flake8 ueberzug
rm -r ~/.config/nvim
ln -s ~/configs/vim ~/.config/nvim
rustup component add rls rust-analysis rust-src
nvim +PlugInstall
nvim +GoInstallBinaries
