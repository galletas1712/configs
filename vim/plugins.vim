call plug#begin('~/.vim/plugged')
" GUI
" Plug 'flrnprz/candid.vim' " Requires further setup -- just add the file to .vim (or rtp)
Plug 'drewtempelmeyer/palenight.vim'

" Editor behaviors
Plug 'andymass/vim-matchup'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-commentary'

" Editor tools
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' " Further install ag to search code
Plug 'tpope/vim-fugitive'

" Lang
Plug 'rust-lang/rust.vim' " Requires further setup
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Requires further setup
Plug 'leafgarland/typescript-vim'
call plug#end()
