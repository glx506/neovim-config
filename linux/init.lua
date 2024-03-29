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
-- Last update:06.04.2022                                         --
-- init.lua configuration file for NeoVIM                         --
-- Configured for: neovim (Linux x64)                             --
--------------------------------------------------------------------
local map = vim.api.nvim_set_keymap
------------------------------------------------------------------------------------------------------------------------
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
-- General settings:
vim.o.wrap = true -- Dynamic transfer of long strings.
vim.o.textwidth = 120 -- String length 120 characters.
vim.o.mouse = "a" -- Mouse enable.
vim.o.number = true -- Lines enumerate.
vim.o.colorcolumn = "121"  -- Separator at 120 characters.
vim.o.wrap = true -- Transferring whole words.
vim.o.keymap = "russian-jcukenwin"  -- Switching the layout Ctrl-^.
vim.o.iminsert = 0  -- Default English layout.
vim.o.imsearch = 0  -- The default English layout for the search line and command input.
vim.o.showmatch = true -- Highlight matching brackets (), [] and {}.
vim.cmd [[set mps+=<:>]] -- Matching brackets highlighting <>.
vim.o.showtabline = 0 -- Disable tabline.
vim.o.scrolloff = 7 -- Number of lines after the cursor when scrolling.
vim.o.cursorline = true -- Light the cursor line
-- Cursor settings.
vim.cmd [[set termguicolors]]
vim.cmd [[set guicursor=n-c-v:block-Cursor/Cursor-blinkon0]]
vim.cmd [[set guicursor+=i-ci:ver1-Cursor/Cursor-blinkwait300-blinkon200-blinkoff150]]
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
vim.o.fileformat = "unix" -- The format of the end of lines is dos or unix.
------------------------------------------------------------------------------------------------------------------------
-- Text:
vim.o.list = true -- Displays non-printable characters.
vim.o.listchars = "tab:<->,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»"
------------------------------------------------------------------------------------------------------------------------
-- Python:
-- In *.py files include smart indents after keywords:
vim.cmd [[au BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class]]
------------------------------------------------------------------------------------------------------------------------
-- Switch Encoding:
vim.cmd [[set wildmenu]]
vim.cmd [[set wcm=<Tab>]]
vim.cmd [[menu Encoding.koi8-r :e ++enc=koi8-r ++ff=unix<cr>]]
vim.cmd [[menu Encoding.windows-1251 :e ++enc=cp1251 ++ff=unix<cr>]]
vim.cmd [[menu Encoding.cp866 :e ++enc=cp866 ++ff=unix<cr>]]
vim.cmd [[menu Encoding.utf-8 :e ++enc=utf8 ++ff=unix<cr>]]
vim.cmd [[menu Encoding.koi8-u :e ++enc=koi8-u ++ff=unix<cr>]]
map('n', '<F12>', ':emenu Encoding.<TAB>', {noremap = true, silent = true})
------------------------------------------------------------------------------------------------------------------------
-- Spelling:
vim.cmd [[set wildmenu]]
vim.cmd [[set wcm=<Tab>]]
vim.cmd [[menu Spell.Spell[RU] :set spell spelllang=ru<cr>]]
vim.cmd [[menu Spell.Spell[EN] :set spell spelllang=en<cr>]]
map('n', '<F11>', ':emenu Spell.<TAB>', {noremap = true, silent = true})
------------------------------------------------------------------------------------------------------------------------
-- NvimTree:
require('nvim-tree').setup()
map('n', '<F10>', ':NvimTreeToggle <cr>', {noremap = true, silent = true})
map('v', '<F10>', '<esc>:NvimTreeToggle <cr>', {noremap = true, silent = true})
map('i', '<F10>', '<esc>:NvimTreeToggle <cr>', {noremap = true, silent = true})
------------------------------------------------------------------------------------------------------------------------
-- Help Menu:
vim.cmd [[set wildmenu]]
vim.cmd [[set wildmode=longest:full]]
vim.cmd [[menu Help.NvimTree&[F10] <esc>]]
vim.cmd [[menu Help.Spelling&[F11] <esc>]]
vim.cmd [[menu Help.Encoding&[F12] <esc>]]
map('n', '<F1>', ':emenu Help.<TAB>', {noremap = true, silent = true})
------------------------------------------------------------------------------------------------------------------------
-- Lualine.nvim:
-- Download "Anonymice Nerd Font" (https://www.nerdfonts.com/font-downloads)
require('lualine').setup()
------------------------------------------------------------------------------------------------------------------------
-- Comment.nvim
-- `gc` - Toggles the region using linewise comment
-- `gb` - Toggles the region using blockwise comment
require('Comment').setup()
------------------------------------------------------------------------------------------------------------------------
-- Python-Syntax:
vim.cmd [[let g:python_highlight_all = 1]]
------------------------------------------------------------------------------------------------------------------------
-- Configuration autocomplete:
-- Set completeopt to have a better completion experience
-- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, -- For luasnip users.
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})
------------------------------------------------------------------------------------------------------------------------
-- Configuration LSP:
local nvim_lsp = require('lspconfig')
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)

  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

end
------------------------------------------------------------------------------------------------------------------------
-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'pyright', 'denols', 'rust_analyzer' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end
------------------------------------------------------------------------------------------------------------------------
