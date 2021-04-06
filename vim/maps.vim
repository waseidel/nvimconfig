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

" Configuration for easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" Configuration of coc
map <silent> gd <Plug>(coc-definition)
map <silent> gy <Plug>(coc-type-definition)
map <silent> gi <Plug>(coc-implementation)
map <silent> gr <Plug>(coc-references)

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

nnoremap <leader>e :e $MYVIMRC<CR>  " Abrir el archivo init.vim con <líder> + e

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
