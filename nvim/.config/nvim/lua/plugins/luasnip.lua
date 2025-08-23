return {
  {
    "L3MON4D3/LuaSnip",
    build = "make install_jsregexp", -- optional, regex features
    dependencies = { "rafamadriz/friendly-snippets" },

    opts = function()
      LazyVim.cmp.actions.snippet_forward = function()
        if require("luasnip").jumpable(1) then
          vim.schedule(function()
            require("luasnip").jump(1)
          end)
          return true
        end
      end
      LazyVim.cmp.actions.snippet_stop = function()
        if require("luasnip").expand_or_jumpable() then -- or just jumpable(1) is fine?
          require("luasnip").unlink_current()
          return true
        end
      end
    end,

    config = function()
      local luasnip = require("luasnip")
      -- Load friendly-snippets (VSCode format)
      require("luasnip.loaders.from_vscode").lazy_load()
      -- Optional: Load your own custom snippets from ~/.config/nvim/snippets
      require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/snippets" })

      luasnip.config.set_config({
        history = true,
        updateevents = "TextChanged,TextChangedI",
        enable_autosnippets = true,
      })
    end,
  },
}
