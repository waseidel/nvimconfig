" Leader Keymap
let mapleader=" "

" Archivo que contiene los atajos personalizados
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" faster scrolling
nnoremap <silent> <C-e> 10<C-e>
nnoremap <silent> <C-y> 10<C-y>

" Configuration for NERDTree
map <Leader>nt :NERDTreeFind<CR>
map <leader>nn :NERDTree<CR>
map <leader>p :Files<CR>
map <leader>ag :Ag<CR>

" Configuration for easymotion
nmap <Leader>s <Plug>(easymotion-s2)

"tmux navigator
nnoremap <silent> <leader><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <leader><C-j> :TmuxNavigateDown<CR>
nnoremap <Silent> <leader><C-k> :TmuxNavigateUp<CR>
nnoremap <silent> <leader><C-l> :TmuxNavigateRight<CR>

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

" copiar ruta relativa del archivo
nnoremap <leader>kp :let @*=expand("%")<CR>

" tabs navigation
map <leader>h :tabprevious<CR>
map <leader>l :tabnext<CR>

" Buffers
map <leader>ob :Buffers<CR>


" Abrir el archivo init.vim con <líder> + e
nnoremap <silent><leader>e :e $MYVIMRC<CR>  
nnoremap <silent>,<leader> :nohlsearch<CR>

" Treat long lines as break lines
map j gj
map k gk

" git
nnoremap <leader>G :G<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gl :Gpull<CR>

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
 tnoremap <Esc> <C-\><C-n>

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif


" open terminal on ctrl+n
set splitright
function! OpenTerminal()
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == 'terminal'
    execute "q"
  else
    " open terminal
    if has("win32") || has("win64")
      execute "vsp term://pwsh"
    else
      execute "vsp term://zsh"
    endif

    " turn off numbers
    execute "set nonu"
    execute "set nornu"

    " toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " set maps inside terminal buffer
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!
  endif
endfunction

nnoremap <c-t> :call OpenTerminal()<CR>

" make Backspace work like Delete
set backspace=indent,eol,start
