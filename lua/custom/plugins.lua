
local plugins = {
  {
    "github/copilot.vim",
    lazy = false,
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.api.nvim_set_keymap(
        "i",
        "<C-t>",
        'copilot#Accept("<CR>")',
        { silent = true, expr = true }
      )
    end,
  },

  {
    "wakatime/vim-wakatime",
    lazy = false,
  },

  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettier,
          -- Add more formatters/linters here
        },
      })

      -- Register :Format command
      vim.api.nvim_create_user_command("Format", function()
        vim.lsp.buf.format({ async = true })
      end, {})
    end,
  },
}

return plugins
