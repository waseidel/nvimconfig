let g:nvim_data_root = stdpath("data")
let g:nvim_config_root = stdpath("config")
let g:files_config = [ '/general/settings.vim',
  \   '/nvim-plugins/plugins.vim',
  \   '/plug-config/configs.vim',
  \   '/mapping/maps.vim'
  \ ]

for f in g:files_config
  execute 'source ' . g:nvim_config_root . f
endfor
