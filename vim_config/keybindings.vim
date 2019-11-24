" Set leader
" TODO: check for space conflicts
let mapleader = "\<Space>"

" ; as :
" Consider changing to recursive?
nnoremap ; :

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

" Buffer management
nnoremap <leader><leader> <c-^>
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bd :bd<cr>

" Quick actions 
nnoremap <leader>w :w<cr>
nnoremap <leader>e :wq<cr>
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
