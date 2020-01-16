call plug#begin('~/.vim/plugged')
" GUI
" Plug 'szawinis/vim-monokai'
Plug 'arzg/vim-colors-xcode'

" Editor behaviors
Plug 'andymass/vim-matchup'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-commentary'

" Editor tools
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " needs bat for syntax highlighting in preview
Plug 'junegunn/fzf.vim' " Further install ag to search code
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'

" Lang
Plug 'rust-lang/rust.vim' " Requires further setup
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Requires further setup
Plug 'leafgarland/typescript-vim' " Requires further setup
Plug 'dart-lang/dart-vim-plugin' " Goes with coc-flutter
call plug#end()

"-----------------------------------------------Options-----------------------------------------------------
" NERDTree auto-open if no file specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endi

" NERDTREE toggle
nnoremap <leader>nt :NERDTreeToggle<CR>

" fzf.vim Files preview
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)

"-----------------------------------------------COC.NVIM----------------------------------------------------

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_leader() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_leader() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-leader> to trigger completion.
inoremap <silent><expr> <c-leader> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> <leader><leader>[g <Plug>(coc-diagnostic-prev)
nmap <silent> <leader><leader>]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> <leader><leader>gd <Plug>(coc-definition)
nmap <silent> <leader><leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader><leader>gi <Plug>(coc-implementation)
nmap <silent> <leader><leader>gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> <leader><leader>sd :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader><leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader><leader>f  <Plug>(coc-format-selected)
nmap <leader><leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader><leader>aap` for current paragraph
xmap <leader><leader>a  <Plug>(coc-codeaction-selected)
nmap <leader><leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader><leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader><leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <leader><leader>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <leader><leader>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <leader><leader>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <leader><leader>o  :<C-u>CocList outline<cr>
" Search workleader symbols
nnoremap <silent> <leader><leader>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader><leader>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader><leader>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <leader><leader>p  :<C-u>CocListResume<CR>

" Disable auto-pair quotes for vim
autocmd FileType vim let b:coc_pairs_disabled = ['"']
autocmd FileType rust let b:coc_pairs_disabled = ["'"]


