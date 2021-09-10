" Configuration file for plugins
" this is were all the plugins are located

if has("win64") || has("win32") || has("win16")
  call plug#begin('~/AppData/Local/nvim/vim/plugged')
elseif has("unix")
  call plug#begin('~/.config/nvim/vim/plugged')
endif
  
  " ## Syntax
  Plug 'sheerun/vim-polyglot'
  "Plug 'leafgarland/typescript-vim'               " TypeScript syntax
  "Plug 'maxmellon/vim-jsx-pretty'                 " JS and JSX syntax
  "Plug 'styled-components/vim-styled-components', { 'branch': 'main' }  " Styled Components Highlihts CSS
  "Plug 'pangloss/vim-javascript'                  " JavaScript support
  "Plug 'jparise/vim-graphql'                      " GraphQL syntax



  " ##Themes & Color Schemes
  Plug 'ryanoasis/vim-devicons'                   " Font Icons
  Plug 'morhetz/gruvbox'                          " Theme Gruvbox for Neovim
  Plug 'shinchu/lightline-gruvbox.vim'            " Theme Gruvbox for lightline

  " ### StatusBar
  Plug 'maximbaz/lightline-ale'                   " ALE indicator for the lightline vim plugin.
  Plug 'itchyny/lightline.vim'                    " Status bar ligtline

  " ### Tree
  Plug 'scrooloose/nerdtree'                      " Files tree
  
  " ### Typing
  Plug 'jiangmiao/auto-pairs'                     " Auto pairs works for autocomplete () '' [] {}
  Plug 'alvan/vim-closetag'                       " Auto close tag
  Plug 'tpope/vim-surround'                       " 'surroundings': parentheses, brackets, quotes, XML tags, and more.

  " ## Tmux
  Plug 'preservim/vimux'                          " easily interact with tmux from vim
  Plug 'christoomey/vim-tmux-navigator'           " Navigate betwen open files

  " ### Auto-complete
  Plug 'sirver/ultisnips'                         " the ultimate solution for snippets in Vim
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " Code of Completion 'Lots of plugins

  " IDE
  Plug 'editorconfig/editorconfig-vim'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'easymotion/vim-easymotion'                " Space + s activates the plug in 
  Plug 'mhinz/vim-signify'
  Plug 'yggdroot/indentline'
  Plug 'preservim/nerdcommenter'                  " Comenter

  " ### git
  Plug 'tpope/vim-fugitive'                       " Plugin for GIT

  Plug 'tpope/vim-repeat'

call plug#end()
