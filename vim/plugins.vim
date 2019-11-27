call plug#begin('~/.vim/plugged')
" GUI
Plug 'flrnprz/candid.vim' " Requires further setup -- just add the file to .vim (or rtp)

" Editor behaviors
Plug 'andymass/vim-matchup'
Plug 'airblade/vim-rooter'

" Editor tools
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'

" Lang
Plug 'rust-lang/rust.vim' " Requires further setup
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Requires further setup
call plug#end()

