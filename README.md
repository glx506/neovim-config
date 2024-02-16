# Neovim Config.
## <a name="dependency">Dependency list:</a>
+ https://github.com/jiangmiao/auto-pairs.git
+ https://github.com/benisued/BetterLua.git
+ https://github.com/dracula/vim.git
+ https://github.com/nvim-lualine/lualine.nvim.git
+ https://github.com/nvim-treesitter/nvim-treesitter.git
+ https://github.com/nvim-tree/nvim-web-devicons.git


## Configuration:
### Linux (Ubuntu, Debian):
+ Neovim:
```bash
$ curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
$ chmod u+x nvim.appimage
$ ./nvim.appimage --appimage-extract
$ ./squashfs-root/AppRun --version
# Optional: exposing nvim globally
$ sudo mv squashfs-root / && ln -s /squashfs-root/AppRun /usr/bin/nvim
$ nvim
```
+ Config:
```bash
$ mkdir ~/.config/nvim
$ mkdir -p ~/.config/nvim/autoload ~/.config/nvim/bundle
$ curl -LSso ~/.config/nvim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
$ mv init.lua ~/.config/nvim
$ cd ~/.config/nvim/bundle
$ git clone *Dependency list
```
+ [*Dependency list](#dependency)
+ Pyright (Python LSP Server):
```bash
$ sudo apt-get update
$ sudo apt-get install nodejs
$ sudo apt-get install npm
$ npm install --global pyright
```
+ Denols (JavaScript LSP Server):
```bash
$ curl -fsSL https://deno.land/x/install/install.sh | sh
```
```vim
# If you are using zsh + oh-my-zsh add to .zshrc:
export DENO_INSTALL="/home/UsenName/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
```
### Windows:
+ Config:
```cmd
md C:\Users\%username%\AppData\Local\nvim
md C:\Users\%username%\AppData\Local\nvim\autoload
md C:\Users\%username%\AppData\Local\nvim\bundle
copy init.lua C:\Users\%username%\AppData\Local\nvim
curl -LSso C:\Users\%username%\AppData\Local\nvim\autoload\pathogen.vim https://tpo.pe/pathogen.vim
cd C:\Users\%username%\AppData\Local\nvim\bundle
git clone *Dependency list
```
+ [*Dependency list](#dependency)
+ Pyright (Python LSP Server):
  + Install Node.JS
```cmd
npm install --global pyright
```
+ Denols (JavaScript LSP Server):
https://github.com/denoland/deno/releases/latest
## Used resources:
+ https://github.com/nanotee/nvim-lua-guide
+ https://github.com/rockerBOO/awesome-neovim
---
## Fonts:
+ https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/AnonymousPro.zip
---
