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
-- Last update:12.11.2021                                         --
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
-- NERDTree:
vim.cmd [[let NERDTreeShowHidden=1]]
vim.cmd [[let NERDTreeQuitOnOpen=1]]
vim.cmd [[let NERDTreeNaturalSort=1]]
map('n', '<F10>', ':NERDTreeToggle ~/<cr>', {noremap = true, silent = true})
map('v', '<F10>', '<esc>:NERDTreeToggle ~/<cr>', {noremap = true, silent = true})
map('i', '<F10>', '<esc>:NERDTreeToggle ~/<cr>', {noremap = true, silent = true})
------------------------------------------------------------------------------------------------------------------------
-- Help Menu:
vim.cmd [[set wildmenu]]
vim.cmd [[set wildmode=longest:full]]
vim.cmd [[menu Help.NERDTree&[F10] <esc>]]
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
-- Asociation of files with highlighting:
-- Asociation of *.log files for syntax highlighting.
vim.cmd [[au BufRead,BufNewFile *.log set filetype=log]]
------------------------------------------------------------------------------------------------------------------------
-- Python-Syntax:
vim.cmd [[let g:python_highlight_all = 1]]
------------------------------------------------------------------------------------------------------------------------

-- Configuration autocomplete:
-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  completion = {
    autocomplete = false
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = function(fallback)
      if vim.fn.pumvisible() == 1 then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-n>', true, true, true), 'n')
      elseif luasnip.expand_or_jumpable() then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if vim.fn.pumvisible() == 1 then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-p>', true, true, true), 'n')
      elseif luasnip.jumpable(-1) then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
      else
        fallback()
      end
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}
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

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'pyright', 'denols' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end
------------------------------------------------------------------------------------------------------------------------
-- Set barbar's options:
vim.g.bufferline = {
  -- Enable/disable animations
  animation = true,
  -- Enable/disable auto-hiding the tab bar when there is a single buffer
  auto_hide = false,
  -- Enable/disable current/total tabpages indicator (top right corner)
  tabpages = true,
  -- Enable/disable close button
  closable = true,
  -- Enables/disable clickable tabs
  --  - left-click: go to buffer
  --  - middle-click: delete buffer
  clickable = true,
  -- Excludes buffers from the tabline
  exclude_ft = {'javascript'},
  exclude_name = {'package.json'},
  -- Enable/disable icons
  -- if set to 'numbers', will show buffer index in the tabline
  -- if set to 'both', will show buffer index and icons in the tabline
  icons = true,
  -- If set, the icon color will follow its corresponding buffer
  -- highlight group. By default, the Buffer*Icon group is linked to the
  -- Buffer* group (see Highlighting below). Otherwise, it will take its
  -- default value as defined by devicons.
  icon_custom_colors = false,
  -- Configure icons on the bufferline.
  icon_separator_active = '|',
  icon_separator_inactive = '|',
  icon_close_tab = '',
  icon_close_tab_modified = '•',
  icon_pinned = '車',
  -- If true, new buffers will be inserted at the start/end of the list.
  -- Default is to insert after current buffer.
  insert_at_end = false,
  insert_at_start = false,
  -- Sets the maximum padding width with which to surround each tab
  maximum_padding = 1,
  -- Sets the maximum buffer name length.
  maximum_length = 30,
  -- If set, the letters for each buffer in buffer-pick mode will be
  -- assigned based on their name. Otherwise or in case all letters are
  -- already assigned, the behavior is to assign letters in order of
  -- usability (see order below)
  semantic_letters = true,
  -- New buffer letters are assigned in this order. This order is
  -- optimal for the qwerty keyboard layout but might need adjustement
  -- for other layouts.
  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
  -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
  -- where X is the buffer number. But only a static string is accepted here.
  no_name_title = nil,
}
------------------------------------------------------------------------------------------------------------------------
