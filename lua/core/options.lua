-- VSCode-like appearance settings
vim.wo.number = true -- Show line numbers
vim.o.relativenumber = false -- Disable relative numbers for VSCode-like feel
vim.o.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim
vim.o.wrap = false -- No line wrapping
vim.o.linebreak = true -- Don't split words when wrapping
vim.o.mouse = 'a' -- Enable mouse support
vim.o.autoindent = true -- Auto indent
vim.o.ignorecase = true -- Case-insensitive searching
vim.o.smartcase = true -- Smart case
vim.o.shiftwidth = 2 -- 2 spaces for indentation (VSCode default)
vim.o.tabstop = 2 -- 2 spaces for tabs (VSCode default)
vim.o.softtabstop = 2 -- 2 spaces for soft tabs
vim.o.expandtab = true -- Convert tabs to spaces
vim.o.scrolloff = 8 -- Keep 8 lines above/below cursor
vim.o.sidescrolloff = 8 -- Keep 8 columns left/right of cursor
vim.o.cursorline = true -- Highlight current line (VSCode-like)
vim.o.splitbelow = true -- Horizontal splits below
vim.o.splitright = true -- Vertical splits right
vim.o.hlsearch = true -- Highlight search matches
vim.o.showmode = false -- Don't show mode (we'll use statusline)
vim.opt.termguicolors = true -- Enable true colors
vim.o.whichwrap = 'bs<>[]hl' -- Allow specified keys to cross line boundaries
vim.o.numberwidth = 4 -- Width of number column
vim.o.swapfile = false -- Disable swap files
vim.o.smartindent = true -- Smart indenting
vim.o.showtabline = 2 -- Always show tabline
vim.o.backspace = 'indent,eol,start' -- Allow backspace
vim.o.pumheight = 10 -- Popup menu height
vim.o.conceallevel = 0 -- Show `` in markdown
vim.wo.signcolumn = 'yes' -- Always show sign column
vim.o.fileencoding = 'utf-8' -- File encoding
vim.o.cmdheight = 1 -- Command line height
vim.o.breakindent = true -- Enable break indent
vim.o.updatetime = 300 -- Faster update time
vim.o.timeoutlen = 300 -- Time to wait for mapped sequence
vim.o.backup = false -- No backup files
vim.o.writebackup = false -- No write backup
vim.o.undofile = true -- Enable undo file
vim.o.completeopt = 'menuone,noselect' -- Completion options
vim.opt.shortmess:append 'c' -- Don't show completion messages
vim.opt.iskeyword:append '-' -- Include hyphen in words
vim.opt.formatoptions:remove { 'c', 'r', 'o' } -- Don't auto-wrap comments
vim.opt.runtimepath:remove '/usr/share/vim/vimfiles' -- Remove Vim runtime

-- VSCode-like syntax highlighting
vim.cmd [[
  hi Normal guibg=NONE ctermbg=NONE
  hi LineNr guifg=#858585 guibg=NONE
  hi CursorLineNr guifg=#c6c6c6 guibg=NONE
  hi SignColumn guibg=NONE
  hi EndOfBuffer guibg=NONE
  hi VertSplit guifg=#3c3c3c guibg=NONE
  hi StatusLine guifg=#c6c6c6 guibg=#2d2d2d
  hi StatusLineNC guifg=#858585 guibg=#2d2d2d
  hi TabLine guifg=#858585 guibg=#2d2d2d
  hi TabLineFill guibg=#2d2d2d
  hi TabLineSel guifg=#c6c6c6 guibg=#1e1e1e
  hi Pmenu guifg=#c6c6c6 guibg=#2d2d2d
  hi PmenuSel guifg=#ffffff guibg=#264f78
  hi PmenuSbar guibg=#2d2d2d
  hi PmenuThumb guibg=#3c3c3c
  hi Search guifg=#ffffff guibg=#264f78
  hi IncSearch guifg=#ffffff guibg=#264f78
  hi Visual guifg=#ffffff guibg=#264f78
  hi MatchParen guifg=#ffffff guibg=#264f78
  hi Comment guifg=#6a9955
  hi String guifg=#ce9178
  hi Number guifg=#b5cea8
  hi Boolean guifg=#569cd6
  hi Function guifg=#dcdcaa
  hi Keyword guifg=#569cd6
  hi Operator guifg=#d4d4d4
  hi Type guifg=#4ec9b0
  hi Identifier guifg=#9cdcfe
  hi Constant guifg=#569cd6
  hi Special guifg=#d7ba7d
  hi PreProc guifg=#c586c0
  hi Statement guifg=#569cd6
  hi Title guifg=#569cd6
  hi Todo guifg=#6a9955 guibg=NONE
  hi Error guifg=#f44747 guibg=NONE
  hi Warning guifg=#cca700 guibg=NONE
  hi Info guifg=#3794ff guibg=NONE
  hi Hint guifg=#6a9955 guibg=NONE
]]
