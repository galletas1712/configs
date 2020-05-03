" Set leader
" TODO: check for space conflicts
let mapleader = "\<Space>"

" ; as : in normal mode
" Doesn't affect things like g; either way
nnoremap ; :

" To close coc.nvim windows (e.g. Diagnostics), we also have to set this in
" coc-settings.json
noremap <C-c> <esc>

" FZF
" nnoremap <leader>fo :Files<cr>

" Stop search
vnoremap <c-h> :nohlsearch<cr>
nnoremap <c-h> :nohlsearch<cr>

" Force home row
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Scrolling
" TODO

" Quick actions
nnoremap <leader>qq :q!<cr>

" System clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>d "+d
vnoremap <leader>d "+d
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P
nnoremap <leader>yy "+yy
nnoremap <leader>dd "+dd
