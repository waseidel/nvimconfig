set title             " Muestra el nombre del archivo en la ventana de la terminal
set number            " Muestra los números de las líneas
set mouse=a           " Permite la integración del mouse (seleccionar texto, mover el cursor)
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline        " Resalta la línea actual
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set autoread
set guifont=Fira\ Code:h15
set colorcolumn=120   " Muestra la columna límite a 120 caracteres
" Show tabs
set list
set listchars=tab:>-
set listchars=space:·

" Indentación a 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab         " Insertar espacios en lugar de <Tab>s
set spelllang=en,es   " Corregir palabras usando diccionarios en español e inglés
set termguicolors     " Activa true colors en la terminal

if has("win64") || has("win32") || has("win16")
  so ~/AppData/Local/nvim/vim/maps.vim
  so ~/AppData/Local/nvim/vim/plugins.vim
  so ~/AppData/Local/nvim/vim/plugins-config.vim
elseif has("unix")
  so ~/.config/nvim/vim/maps.vim
  so ~/.config/nvim/vim/plugins.vim
  so ~/.config/nvim/vim/plugins-config.vim
endif

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode

" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
