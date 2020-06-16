" Set leader
" TODO: check for space conflicts
let mapleader = "\<Space>"

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

" Quick actions
nnoremap <leader>qq :qa!<cr>

" System clipboard
" This is pretty lucky. The <leader>d prefixes in normal mode are only used
" with other modifiers so we don't get a lag :)
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
