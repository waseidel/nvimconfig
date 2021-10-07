" Leader Keymap
let mapleader=" "

let g:maps = [ 'nerdtree.vim', 
  \  'coc.vim', 
  \  'easymotion.vim', 
  \  'fugitive.vim', 
  \  'terminal.vim', 
  \  'tmux.vim' 
  \]

for f in g:maps
      execute 'source ' . g:nvim_config_root . '/mapping/' . f
endfor

" Atajos para guardar y salir
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" faster scrolling
nnoremap <silent> <C-e> 10<C-e>
nnoremap <silent> <C-y> 10<C-y>

map <leader>p :Files<CR>
map <silent> ag :Ag<CR>

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

" open new split panes to right and below
set splitright
set splitbelow

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" make Backspace work like Delete
set backspace=indent,eol,start

nnoremap <up> <c-y>
nnoremap <down> <c-e>
nnoremap <right> zl
nnoremap <left> zh
