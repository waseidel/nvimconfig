[![NeoVim][logo]](https://neovim.io)
# Mi configuracion de neovim

![GitHub branch checks state](https://img.shields.io/github/checks-status/waseidel/nvimconfig/main) 
![GitHub all releases](https://img.shields.io/github/downloads/waseidel/nvimconfig/total)
![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/waseidel/nvimconfig?sort=semver)

Estas configuraciones fueron probadas en linux WSL

###### En Alpine linux hay que agregar el siguiente comando
```sh
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.config}"/nvim/autoload/plug.vim --create-dirs
    \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

###### En Ubuntu 20.04 el comando es el siguiente

[logo]: https://neovim.io/images/logo@2x.png

###### Windows (PowerShell)

```powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

##### Requerimientos
* [VimPlug]

[VimPlug]: https://github.com/junegunn/vim-plug
