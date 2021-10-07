call plug#begin(g:nvim_config_root . '/plugged')
  
  " ## Syntax
  Plug 'sheerun/vim-polyglot'
  
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
