[![NeoVim][logo]](https://neovim.io)
# Mi configuracion de neovim

![GitHub branch checks state](https://img.shields.io/github/checks-status/waseidel/nvimconfig/main) 
![GitHub all releases](https://img.shields.io/github/downloads/waseidel/nvimconfig/total)
![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/waseidel/nvimconfig?sort=semver)
![Twitter Follow](https://img.shields.io/twitter/follow/waseidel?label=Sigeme%20%40WaSeidel&style=social)

Estas configuraciones fueron probadas en linux WSL

###### En Alpine y Ubuntu linux hay que agregar el siguiente comando
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.config}"/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

###### Windows (PowerShell)

```powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/AppData/Local/nvim/autoload/plug.vim" -Force
```

##### Requerimientos

* [VimPlug]

[VimPlug]: https://github.com/junegunn/vim-plug
[logo]: https://neovim.io/images/logo@2x.png
