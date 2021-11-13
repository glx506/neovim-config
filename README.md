# Neovim Config.
## <a name="dependency">Dependency list:</a>
+ https://github.com/hrsh7th/cmp-nvim-lsp.git
+ https://github.com/L3MON4D3/LuaSnip.git
+ https://github.com/neovim/nvim-lspconfig.git
+ https://github.com/hrsh7th/nvim-cmp.git
+ https://github.com/saadparwaiz1/cmp_luasnip.git
+ https://github.com/yuezk/vim-js.git
+ https://github.com/euclidianAce/BetterLua.vim.git
+ https://github.com/dracula/vim.git
+ https://github.com/preservim/nerdtree.git
+ https://github.com/vim-python/python-syntax.git
+ https://github.com/nvim-lualine/lualine.nvim.git
+ https://github.com/kyazdani42/nvim-web-devicons.git
+ https://github.com/HerringtonDarkholme/yats.vim.git
+ https://github.com/MaxMEllon/vim-jsx-pretty.git
+ https://github.com/jiangmiao/auto-pairs.git
+ https://github.com/numToStr/Comment.nvim.git
+ https://github.com/romgrk/barbar.nvim.git


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
$ md ~/.config/nvim
$ md -p ~/.config/nvim/autoload ~/.config/nvim/bundle
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
# If you are using zsh + oh-my-zsh add to .zshrc:
```
```vim
export DENO_INSTALL="/home/UsenName/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
```
### Windows:
+ Config:
```cmd
md C:\Users\%username%\AppData\Local\nvim
md C:\Users\%username%\AppData\Local\nvim\autoload && md C:\Users\%username%\AppData\Local\nvim\bundle
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
---
