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

##### Instalar node para poder ejecutar CoC

###### Ubuntu
``` sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

###### Alpine
``` sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | ash
```

luego verificar que este en el archivo de .bashrc o .profile
``` sh
export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```

Y finalmente proceder a instalar la versión deseada de node yo instalo la LTS (v14.16.1 al momento de la instalación)

``` sh
nvm install --lts
```

###### Windows
En windows ir a la pagina de nodejs y descargar la version deseada

##### Requerimientos

* [VimPlug]
* [Nodejs]

[VimPlug]: https://github.com/junegunn/vim-plug
[Nodejs]: https://nodejs.org
[logo]: https://neovim.io/images/logo@2x.png
