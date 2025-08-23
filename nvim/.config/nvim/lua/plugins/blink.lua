return {
  {
    "Saghen/blink.cmp",
    opts = {
      sources = {
        default = {
          "lsp",
          "path",
          "buffer",
        },
      },
      snippets = {
        preset = "luasnip", -- ← tells Blink to use LuaSnip
      },
    },
  },
}
