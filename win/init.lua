--------------------------------------------------------------------
--                                                                --
-- 888b    888                  888     888 8888888 888b     d888 --
-- 8888b   888                  888     888   888   8888b   d8888 --
-- 88888b  888                  888     888   888   88888b.d88888 --
-- 888Y88b 888  .d88b.   .d88b. Y88b   d88P   888   888Y88888P888 --
-- 888 Y88b888 d8P  Y8b d88""88b Y88b d88P    888   888 Y888P 888 --
-- 888  Y88888 88888888 888  888  Y88o88P     888   888  Y8P  888 --
-- 888   Y8888 Y8b.     Y88..88P   Y888P      888   888   "   888 --
-- 888    Y888  "Y8888   "Y88P"     Y8P     8888888 888       888 --
--                                                                --
-- Last update:16.02.2024                                         --
-- init.lua configuration file for NeoVIM SKB Edition             --
-- Configured for: neovim-qt/neovim (Win 10 x64)                  --
--------------------------------------------------------------------
local map = vim.api.nvim_set_keymap
vim.cmd [[set shada="NONE"]] -- Disable shada file.
vim.cmd [[set viminfo="NONE"]] -- Disable viminfo file.
vim.cmd [[set noswapfile]] -- Disable swap.
------------------------------------------------------------------------------------------------------------------------
-- Pathogen (Plugin Manager):
vim.cmd [[execute pathogen#infect()]]
------------------------------------------------------------------------------------------------------------------------
-- Color Scheme:
vim.cmd [[colorscheme dracula]]  -- Dracula (https://github.com/dracula/vim.git).
------------------------------------------------------------------------------------------------------------------------
vim.o.wrap = true -- Dynamic transfer of long strings.
vim.o.textwidth = 120 -- String length 120 characters.
vim.o.mouse = "a" -- Mouse enable.
vim.o.number = true -- Lines enumerate.
vim.o.colorcolumn = "121"  -- Separator at 120 characters.
vim.o.keymap = "russian-jcukenwin"  -- Switching the layout Ctrl-^.
vim.o.iminsert = 0  -- Default English layout.
vim.o.imsearch = 0  -- The default English layout for the search line and command input.
vim.o.showmatch = true -- Highlight matching brackets (), [] and {}.
vim.cmd [[set mps+=<:>]] -- Matching brackets highlighting <>.
vim.o.showtabline = 0 -- Disable tabline.
vim.o.scrolloff = 7 -- Number of lines after the cursor when scrolling.
vim.o.cursorline = true -- Light the cursor line
------------------------------------------------------------------------------------------------------------------------
-- Hotkeys:
-- Only hjkl, Hardcore! ;):
map('', '<up>', ':echoe "Use k"<CR>', {noremap = true, silent = false})
map('', '<down>', ':echoe "Use j"<CR>', {noremap = true, silent = false})
map('', '<left>', ':echoe "Use h"<CR>', {noremap = true, silent = false})
map('', '<right>', ':echoe "Use l"<CR>', {noremap = true, silent = false})
-- Turn off search highlight:
map('n', ',<Space>', ':nohlsearch<CR>', { noremap = true, silent = true })
------------------------------------------------------------------------------------------------------------------------
-- Smart Tab:
vim.o.tabstop = 4 -- The number of spaces by which the tab character appears in the text.
vim.o.shiftwidth = 4 -- Adjusting the indentation width in the spaces added by the >> and << commands.
vim.o.softtabstop = 4 -- Number of spaces in Tab.
vim.o.smarttab = true -- Adding an indent whose width corresponds to shiftwidth.
vim.o.expandtab = true -- Put Tab with spaces.
-- For JavaScript, Lua, html, text, Markdown, CSS - Set 2 space:
vim.cmd [[autocmd Filetype javascript,lua,html,text,markdown,css setlocal ts=2 sw=2 sts=2 smarttab expandtab]]
------------------------------------------------------------------------------------------------------------------------
-- Search:
vim.o.ignorecase = true -- Searching without case-sensitive characters.
vim.o.smartcase = true -- If the search item contains uppercase characters, the search is case-sensitive.
vim.o.incsearch = true -- Search for a fragment as it is typed.
------------------------------------------------------------------------------------------------------------------------
-- Encoding:
vim.o.encoding = "utf-8" -- Default file encoding.
vim.o.fileencodings = "utf-8,cp866" -- List of encodings for auto-detection.
vim.o.fileformat = "dos" -- The format of the end of lines is dos or unix.
------------------------------------------------------------------------------------------------------------------------
-- Text:
vim.o.list = true -- Displays non-printable characters.
vim.o.listchars = "tab:<->,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»"
------------------------------------------------------------------------------------------------------------------------
-- Python:
-- In *.py files include smart indents after keywords:
vim.cmd [[au BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class]]
------------------------------------------------------------------------------------------------------------------------
-- Tail:
vim.cmd [[nnoremap <F5> :TailStart<cr>]]
-- Switch Encoding:
vim.cmd [[set wildmenu]]
vim.cmd [[set wcm=<Tab>]]
vim.cmd [[menu Encoding.koi8-r :e ++enc=koi8-r ++ff=dos<cr>]]
vim.cmd [[menu Encoding.windows-1251 :e ++enc=cp1251 ++ff=dos<cr>]]
vim.cmd [[menu Encoding.cp866 :e ++enc=cp866 ++ff=dos<cr>]]
vim.cmd [[menu Encoding.utf-8 :e ++enc=utf8 ++ff=dos<cr>]]
vim.cmd [[menu Encoding.koi8-u :e ++enc=koi8-u ++ff=dos<cr>]]
map('n', '<F12>', ':emenu Encoding.<TAB>', {noremap = true, silent = true})
------------------------------------------------------------------------------------------------------------------------
-- Spelling:
vim.cmd [[set wildmenu]]
vim.cmd [[set wcm=<Tab>]]
vim.cmd [[menu Spell.Spell[RU] :set spell spelllang=ru<cr>]]
vim.cmd [[menu Spell.Spell[EN] :set spell spelllang=en<cr>]]
vim.cmd [[menu Spell.NoSpell :set spell nospell<cr>]]
map('n', '<F11>', ':emenu Spell.<TAB>', {noremap = true, silent = true})
------------------------------------------------------------------------------------------------------------------------
-- Help Menu:
vim.cmd [[set wildmenu]]
vim.cmd [[set wildmode=longest:full]]
vim.cmd [[menu Help.NvimTree&[F10] <esc>]]
vim.cmd [[menu Help.Spelling&[F11] <esc>]]
vim.cmd [[menu Help.Encoding&[F12] <esc>]]
map('n', '<F1>', ':emenu Help.<TAB>', {noremap = true, silent = true})
------------------------------------------------------------------------------------------------------------------------
-- Asociation of files with highlighting:
-- Asociation of *.log files for syntax highlighting.
vim.cmd [[au BufRead,BufNewFile *.log set filetype=log]]
------------------------------------------------------------------------------------------------------------------------
vim.treesitter.language.register('python', 'someft')  -- the someft filetype will use the python parser and queries.
------------------------------------------------------------------------------------------------------------------------
require('lualine').setup()  -- LauLine
