"setup vim-plug {

    "Note: install vim-plug if not present
    if empty(glob('~/.config/nvim/autoload/plug.vim'))
        silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall
    endif

    set nocompatible               " Be iMproved
    call plug#begin(stdpath('data') . '/plugged')
    "Plug 'rust-lang/rust.vim'
    "Plug 'neoclide/coc.nvim', {'branch': 'release'}
    call plug#end()
"}

