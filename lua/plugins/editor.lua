return {
  -- file explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },
      {
        "<leader>o",
        function()
          if vim.bo.filetype == "neo-tree" then
            vim.cmd.wincmd "p"
          else
            vim.cmd "Neotree focus"
          end
        end,
        desc = "Toggle Explorer Focus",
      },
    },
    opts = {
      close_if_last_window = true,
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      source_selector = {
        winbar = true,
        content_layout = "center",
      },
      default_component_configs = {
        indent = {
          padding = 0,
        },
        modified = { symbol = "" },
        git_status = {
          symbols = {
            added = "",
            deleted = "",
            modified = "",
            renamed = "󰁕",
            untracked = "?",
            ignored = "◌",
            unstaged = "-",
            staged = "✓",
            conflict = "",
          },
        },
      },
      commands = {
        system_open = function(state) vim.ui.open(state.tree:get_node():get_id()) end,
        copy_fullpath = function(state) vim.fn.setreg("+", state.tree:get_node():get_id()) end,
      },
      window = {
        width = 35,
        mappings = {
          ["[b"] = "prev_source",
          ["]b"] = "next_source",
          O = "system_open",
          Y = "copy_fullpath",
        },
        fuzzy_finder_mappings = {
          ["<C-J>"] = "move_cursor_down",
          ["<C-K>"] = "move_cursor_up",
        },
      },
      filesystem = {
        follow_current_file = { enabled = true },
        hijack_netrw_behavior = "open_current",
        use_libuv_file_watcher = vim.fn.has "win32" ~= 1,
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },
    },
  },
}
