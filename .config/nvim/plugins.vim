call plug#begin('~/.vim/plugged')
" GUI
" Plug 'szawinis/vim-monokai'
" Plug 'arzg/vim-colors-xcode'
Plug 'kaicataldo/material.vim'

" Editor behaviors
Plug 'andymass/vim-matchup'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-commentary'

" Lines
Plug 'itchyny/lightline.vim'

" Editor tools
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " needs bat for syntax highlighting in preview
Plug 'junegunn/fzf.vim' " Further install ag to search code
Plug 'scrooloose/nerdtree'
Plug 'moll/vim-bbye'
Plug 'junegunn/goyo.vim'

" Lang
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'rust-lang/rust.vim' " Requires further setup
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'} " Might actually have to run :UpdateRemotePlugins manually after :PlugInstall
Plug 'fatih/vim-go' " Needs :GoInstallBinaries after :PlugInstall
Plug 'tranvansang/octave.vim'
Plug 'jparise/vim-graphql'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'jupyter-vim/jupyter-vim'
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

" Opt out of semshi column
let g:semshi#error_sign = v:false

" Opt out of vim-go features (gd and K for documentation)
let g:go_def_mapping_enabled = 0
let g:go_doc_keywordprg_enabled = 1 " Actually K for documentation in vim-go is better than coc.nvim
let g:go_doc_popup_window = 0 

" Vim-go syntax highlighting config
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_types = 1
let g:go_highlight_extra_types = 1

" Lightline configuration for coc.nvim
let g:lightline = {
\ 'colorscheme': 'material_vim',
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
\ },
\ 'component_function': {
\   'cocstatus': 'coc#status'
\ },
\ }
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

"-----------------------------------------------COC.NVIM----------------------------------------------------
" Sane buffer drops
nnoremap <leader>qb :Bdelete<CR>

" Install missing plugins
" Need to run rustup component add rls rust-analysis rust-src on install
let g:coc_global_extensions = [
            \'coc-pairs',
            \'coc-json',
            \'coc-actions',
            \'coc-rls',
            \'coc-tsserver',
            \'coc-prettier',
            \'coc-python',
            \'coc-explorer'
            \]

" :Prettier to format TS/JS
command! -nargs=0 Prettier :CocCommand prettier.formatFile

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
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Scrolling in a floating window
nnoremap <expr><C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
nnoremap <expr><C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader><leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
nnoremap <silent> <leader>fmt :Format<cr>

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <leader>da  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <leader>ext  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <leader>cmd  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <leader>ol  :<C-u>CocList outline<cr>
" Search workleader symbols
nnoremap <silent> <leader>sym  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
" nnoremap <silent> <leader>j  :<C-u>CocNext<CR>
" Do default action for previous item.
" nnoremap <silent> <leader>k  :<C-u>CocPrev<CR>
" Resume latest coc list
" nnoremap <silent> <leader>p  :<C-u>CocListResume<CR>

let g:coc_explorer_global_presets = {
\   '.vim': {
\      'root-uri': '~/.vim',
\   },
\   'floating': {
\      'position': 'floating',
\   },
\   'floatingLeftside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 50,
\   },
\   'floatingRightside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 50,
\   },
\   'simplify': {
\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

" Use preset argument to open it
nnoremap <leader>expd :CocCommand explorer --preset .vim<CR>
nnoremap <leader>expf :CocCommand explorer --preset floating<CR>

" List all presets
nnoremap <leader>expl :CocList explPresets

