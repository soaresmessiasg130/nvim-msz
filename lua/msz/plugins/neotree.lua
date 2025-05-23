local icons = require('msz.assets.icons')

return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  opts = {
    close_if_last_window = true,
    popup_border_style = 'rounded',
    enable_git_status = true,
    enable_diagnostics = true,
    window = {
      position = 'right',
      width = 50,
    },
    mapping_options = {
      noremap = true,
      nowait = true,
    },
    filesystem = {
      follow_current_file = {
        enabled = true,
      },
      use_libuv_file_watcher = true,
    },
    default_component_configs = {
      icon = {
        folder_closed = icons.Folder.Default,
        folder_open = icons.Folder.Opened,
        folder_empty = icons.Folder.Empty,
        folder_empty_open = icons.Folder.EmptyOpened,
      },
      modified = {
        symbol = icons.Git.Modified,
        highlight = 'NeoTreeModified',
      },
      indent = {
        indent_size = 2,
        with_markers = false,
        indent_marker = "│",
        last_indent_marker = "└",
        highlight = "NeoTreeIndentMarker",
        with_expanders = true,
        expander_collapsed = icons.Folder.ArrowClosed,
        expander_expanded = icons.Folder.ArrowOpened,
        expander_highlight = "NeoTreeExpander",
      },
      file_size = {
        enabled = true,
        required_width = 60,
      },
      last_modified = {
        enabled = true,
        required_width = 80,
      },
      created = {
        enabled = true,
        required_width = 100,
      },
      type = {
        enabled = true,
        required_width = 120,
      },
      symlink_target = {
        enabled = true,
        required_width = 140
      },
      git_status = {
        align = 'right',
        symbols = {
          -- Change type
          added     = icons.Git.Add,
          modified  = icons.Git.Modified,
          deleted   = icons.Git.Deleted,
          renamed   = icons.Git.Renamed,
          -- Status type
          untracked = "",
          ignored   = "",
          unstaged  = icons.Git.Unstaged,
          staged    = icons.Git.Staged,
          conflict  = icons.Git.Unmerged,
        },
      },
    },
    sources = {
      'filesystem',
      'buffers',
      'git_status',
      'document_symbols',
    },
    source_selector = {
      winbar = true,
      statusline = false,
      sources = {
        { source = 'filesystem' },
        { source = 'buffers' },
        { source = 'git_status' },
        { source = 'document_symbols' },
      },
    },
  },
}
