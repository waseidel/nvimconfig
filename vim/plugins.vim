" Configuration file for plugins
"
" this is were all the plugins are located

if has("win64") || has("win32") || has("win16")
  call plug#begin('~/AppData/Local/nvim/vim/plugged')
elseif has("unix")
  call plug#begin('~/.config/nvim/vim/plugged')
endif

" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'ryanoasis/vim-devicons'

" IDE
" Space + s activates the plug in
Plug 'easymotion/vim-easymotion'

" Comenter
Plug 'preservim/nerdcommenter'

" Files tree
Plug 'scrooloose/nerdtree'

" Navigate betwen open files
Plug 'christoomey/vim-tmux-navigator'

" Pretier for react.js
Plug 'yuezk/vim-js'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Auto pairs works for autocomplete () '' [] {}
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" Status bar ligtline
Plug 'itchyny/lightline.vim'

" Plugin for GIT
Plug 'tpope/vim-fugitive'

call plug#end()

