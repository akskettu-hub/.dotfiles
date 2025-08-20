return {
  {
    "alexghergh/nvim-tmux-navigation",
    config = function()
      local nvim_tmux_nav = require("nvim-tmux-navigation")

      nvim_tmux_nav.setup({
        disable_when_zoomed = false, -- defaults to false
      })
    end,
    keys = {
      { "<C-h>", "<cmd>NvimTmuxNavigateLeft<cr>", desc = "Navigate Left" },
      { "<C-j>", "<cmd>NvimTmuxNavigateDown<cr>", desc = "Navigate Down" },
      { "<C-k>", "<cmd>NvimTmuxNavigateUp<cr>", desc = "Navigate Up" },
      { "<C-l>", "<cmd>NvimTmuxNavigateRight<cr>", desc = "Navigate Right" },
      { "<C-\\>", "<cmd>NvimTmuxNavigateLastActive<cr>", desc = "Navigate Last Active" },
      { "<C-Space>", "<cmd>NvimTmuxNavigateNext<cr>", desc = "Navigate Next" },
    },
  },
}
