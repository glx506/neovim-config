# Neovim Config.
---
## <a name="dependency">Dependency list:</a>
+ https://github.com/hrsh7th/cmp-nvim-lsp.git
+ https://github.com/L3MON4D3/LuaSnip.git
+ https://github.com/hrsh7th/nvim-cmp.git
+ https://github.com/saadparwaiz1/cmp_luasnip.git
+ https://github.com/yuezk/vim-js.git
+ https://github.com/euclidianAce/BetterLua.vim.git
+ https://github.com/dracula/vim.git
+ https://github.com/preservim/nerdtree.git
+ https://github.com/ryanoasis/vim-devicons.git
+ https://github.com/vim-airline/vim-airline.git
+ https://github.com/vim-python/python-syntax.git
---
## Configuration:
### Linux (Ubuntu, Debian):
+ Neovim:
```bash
$ curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
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
```
+ $ git clone [dependency](#dependency)
+ Pyright:
```bash
$ sudo apt-get update
$ sudo apt-get install nodejs
$ sudo apt-get install npm
$ npm install --global pyright
```
