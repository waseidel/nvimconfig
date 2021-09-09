" Configuration file for plugins
" this is were all the plugins are located

if has("win64") || has("win32") || has("win16")
  call plug#begin('~/AppData/Local/nvim/vim/plugged')
elseif has("unix")
  call plug#begin('~/.config/nvim/vim/plugged')
endif

  " ##Themes & Color Schemes
  Plug 'ryanoasis/vim-devicons'                   " Font Icons
  Plug 'scrooloose/nerdtree'                      " Files tree
  Plug 'morhetz/gruvbox'                          " Theme Gruvbox for Neovim
  Plug 'shinchu/lightline-gruvbox.vim'            " Theme Gruvbox for lightline

  " ##IDE
  Plug 'easymotion/vim-easymotion'                " Space + s activates the plug in 
  Plug 'itchyny/lightline.vim'                    " Status bar ligtline
  Plug 'preservim/nerdcommenter'                  " Comenter
  Plug 'christoomey/vim-tmux-navigator'           " Navigate betwen open files
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " Code of Completion 'Lots of plugins
  Plug 'jiangmiao/auto-pairs'                     " Auto pairs works for autocomplete () '' [] {}
  Plug 'alvan/vim-closetag'                       " Auto close tag
  Plug 'tpope/vim-surround'                       " 'surroundings': parentheses, brackets, quotes, XML tags, and more.
  Plug 'honza/vim-snippets'                       " Snipets
  Plug 'tpope/vim-fugitive'                       " Plugin for GIT

  " ##Languages
  " TypeScript
  Plug 'pangloss/vim-javascript'                  " JavaScript support
  Plug 'leafgarland/typescript-vim'               " TypeScript syntax
  Plug 'maxmellon/vim-jsx-pretty'                 " JS and JSX syntax
  Plug 'jparise/vim-graphql'                      " GraphQL syntax
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }  " Styled Components Highlihts CSS

call plug#end()
