-- Set leader key (keeping space as leader for plugin commands)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

-- VSCode-like keybindings
-- File operations
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>', opts) -- Save file
vim.keymap.set('n', '<C-w>', '<cmd>q<CR>', opts) -- Close window
vim.keymap.set('n', '<C-q>', '<cmd>qa<CR>', opts) -- Quit all

-- Navigation
vim.keymap.set('n', '<C-g>', '<cmd>Telescope live_grep<CR>', opts) -- Search in files (like VSCode's Ctrl+Shift+F)
vim.keymap.set('n', '<C-p>', '<cmd>Telescope find_files<CR>', opts) -- Quick open (like VSCode's Ctrl+P)
vim.keymap.set('n', '<C-b>', '<cmd>Neotree toggle<CR>', opts) -- Toggle sidebar (like VSCode's Ctrl+B)

-- Editor operations
vim.keymap.set('n', '<C-z>', 'u', opts) -- Undo
vim.keymap.set('n', '<C-y>', '<C-r>', { noremap = true, silent = true, desc = 'Redo (VSCode style)' })
vim.keymap.set('i', '<C-y>', '<C-o><C-r>', { noremap = true, silent = true, desc = 'Redo (VSCode style, insert mode)' })
vim.keymap.set('n', '<C-f>', '/', opts) -- Find
vim.keymap.set('n', '<C-h>', '<cmd>nohlsearch<CR>', opts) -- Clear search highlight
vim.keymap.set('n', '<C-a>', 'ggVG', opts) -- Select all

-- Multi-cursor (requires vim-visual-multi plugin)
vim.keymap.set('n', '<C-d>', '<Plug>(VM-Find-Under)', opts) -- Add selection to next occurrence
vim.keymap.set('n', '<C-k>', '<Plug>(VM-Add-Cursor-Up)', opts) -- Add cursor above
vim.keymap.set('n', '<C-j>', '<Plug>(VM-Add-Cursor-Down)', opts) -- Add cursor below

-- Window management
vim.keymap.set('n', '<C-\\>', '<cmd>vsplit<CR>', opts) -- Split right
vim.keymap.set('n', '<C-_>', '<cmd>split<CR>', opts) -- Split down
vim.keymap.set('n', '<C-h>', '<C-w>h', opts) -- Move to left window
vim.keymap.set('n', '<C-l>', '<C-w>l', opts) -- Move to right window
vim.keymap.set('n', '<C-j>', '<C-w>j', opts) -- Move to window below
vim.keymap.set('n', '<C-k>', '<C-w>k', opts) -- Move to window above

-- Tab management
vim.keymap.set('n', '<C-t>', '<cmd>tabnew<CR>', opts) -- New tab
vim.keymap.set('n', '<C-w>', '<cmd>tabclose<CR>', opts) -- Close tab
vim.keymap.set('n', '<C-Tab>', '<cmd>tabnext<CR>', opts) -- Next tab
vim.keymap.set('n', '<C-S-Tab>', '<cmd>tabprevious<CR>', opts) -- Previous tab

-- Code navigation
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts) -- Go to definition
vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts) -- Go to references
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts) -- Go to implementation
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts) -- Show hover
vim.keymap.set('n', '<C-Space>', vim.lsp.buf.code_action, opts) -- Code actions

-- Commenting (using vim-commentary)
vim.keymap.set('n', '<C-/>', 'gcc', opts) -- Toggle comment
vim.keymap.set('v', '<C-/>', 'gc', opts) -- Toggle comment for selection

-- Terminal
vim.keymap.set('n', '<C-`>', '<cmd>ToggleTerm<CR>', opts) -- Toggle terminal

-- Keep some useful Neovim-specific keymaps
vim.keymap.set('v', '<', '<gv', opts) -- Stay in indent mode
vim.keymap.set('v', '>', '>gv', opts) -- Stay in indent mode
vim.keymap.set('v', 'p', '"_dP', opts) -- Keep last yanked when pasting

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
