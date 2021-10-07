let g:configs = [ '/plug-config/gruvbox.vim' , 
  \   '/plug-config/autopairs.vim',
  \   '/plug-config/closetag.vim',
  \   '/plug-config/ligthline.vim',
  \   '/plug-config/coc.vim',
  \   '/plug-config/nerdtree.vim',
  \   '/plug-config/nerdcommenter.vim'
  \]

for f in g:configs
  execute 'source ' . g:nvim_config_root . f
endfor
