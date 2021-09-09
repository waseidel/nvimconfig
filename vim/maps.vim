" Leader Keymap
let mapleader=" "

" Archivo que contiene los atajos personalizados
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" faster scrolling
nnoremap <silent> <C-e> 10<C-e>
nnoremap <silent> <C-y> 10<C-y>

" Configuration for NERDTree
nmap <Leader>nt :NERDTreeFind<CR>
nmap <leader>nn :NERDTree<CR>

" Configuration for easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" Configuration of coc
map <silent> gd <Plug>(coc-definition)
map <silent> gy <Plug>(coc-type-definition)
map <silent> gi <Plug>(coc-implementation)
map <silent> gr <Plug>(coc-references)
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand) 
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select) 
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>' 
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>' 
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump) 
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh() 
nmap <silent><leader>i :CocCommand tsserver.organizeImports<cr>

" Abrir el archivo init.vim con <líder> + e
nnoremap <silent><leader>e :e $MYVIMRC<CR>  
nnoremap <silent>,<leader> :nohlsearch<CR>

" Treat long lines as break lines
map j gj
map k gk

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
 tnoremap <Esc> <C-\><C-n>

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal on ctrl+n
function! OpenTerminal()
  split term://pwsh
  resize 10
endfunction

nnoremap <c-n> :call OpenTerminal()<CR>

" make Backspace work like Delete
set backspace=indent,eol,start
