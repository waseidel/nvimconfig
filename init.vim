set title                                           " Muestra el nombre del archivo en la ventana de la terminal
set number                                          " Muestra los números de las líneas
set mouse=a                                         " Permite la integración del mouse (seleccionar texto, mover el cursor)
set numberwidth=2                                   
set clipboard=unnamed                               
syntax on                                           
set showcmd                                         
set cmdheight=2
set ruler                                           
set cursorline                                      " Resalta la línea actual
set encoding=utf-8                                  
set showmatch                                       " highlight matching parens, braces, brackets, etc
set sw=2                                            " Shift width 
set relativenumber                                  " Muestra el numero de linea relativo
set guifont=FiraCode\ Nerd\ Font:h14                " Fuente
set colorcolumn=80                                  " Muestra la columna límite a 120 caracteres
set laststatus=2                                    
set noshowmode                                      
set autoread                                        " reload files changed outside of Vim not currently modified in Vim (needs below)
au FocusGained,BufEnter * :silent! !                " http://stackoverflow.com/questions/2490227/how-does-vims-autoread-work#20418591

" Indentación a 2 espacios
set shiftround
set expandtab tabstop=2 shiftwidth=2 softtabstop=2  " Insertar espacios en lugar de <Tab>
set autoindent
set smartindent

set spelllang=en,es                                 " Corregir palabras usando diccionarios en español e inglés
set termguicolors                                   " Activa true colort en la terminal

set hlsearch incsearch ignorecase smartcase         " http://vim.wikia.com/wiki/Searching

if has("win64") || has("win32") || has("win16")
  "let &route = "~/AppData/Local"
  so ~/AppData/Local/nvim/vim/maps.vim
  so ~/AppData/Local/nvim/vim/plugins.vim
  so ~/AppData/Local/nvim/vim/plugins-config.vim
elseif has("unix")
  "let &route = "~/.config/nvim"
  so ~/.config/nvim/vim/maps.vim
  so ~/.config/nvim/vim/plugins.vim
  so ~/.config/nvim/vim/plugins-config.vim
endif

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
