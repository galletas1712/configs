sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/tmux-plugins/tpm ~/.local/tmux-plugins/tpm

# Vim
brew install npm yarn fzf jq ctags python3 rustup
pip3 install neovim yapf pylint flake8 ueberzug
rm -r ~/.config/nvim
ln -s ~/configs/vim ~/.config/nvim
rustup component add rls rust-analysis rust-src
nvim +PlugInstall
nvim +GoInstallBinaries
