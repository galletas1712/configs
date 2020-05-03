pip3 install neovim
rm -r ~/.config/nvim
ln -s ~/configs/vim ~/.config/nvim
rustup component add rls rust-analysis rust-src
nvim +PlugInstall
nvim +GoInstallBinaries
pip3 install yapf pylint flake8
brew install ctags
