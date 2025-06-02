return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup({
      close_if_last_window = true,
      window = {
        width = 30,
        mappings = {
          ['<C-b>'] = 'close_window',
          ['<C-h>'] = 'navigate_up',
          ['<C-l>'] = 'open',
          ['<C-j>'] = 'next_source',
          ['<C-k>'] = 'prev_source',
        },
      },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = true,
        },
        follow_current_file = {
          enabled = true,
        },
        use_libuv_file_watcher = true,
      },
      default_component_configs = {
        indent = {
          with_expanders = true,
          expander_collapsed = '›',
          expander_expanded = '▼',
          expander_highlight = 'NeoTreeExpander',
        },
        icon = {
          folder_closed = '›',
          folder_open = '▼',
          folder_empty = '›',
          default = ' ',
        },
        git_status = {
          symbols = {
            added = '✚',
            modified = '✹',
            deleted = '✖',
            renamed = '➜',
            untracked = '?',
            ignored = '◌',
            staged = '✓',
            conflict = '!',
            unstaged = '✗',
          },
        },
      },
      event_handlers = {
        {
          event = 'file_opened',
          handler = function(file_path)
            require('neo-tree').close_all()
          end,
        },
      },
    })
  end,
}
