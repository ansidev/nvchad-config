---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

local nvtermHotKeys = {
  ["<leader>sf"] = {
    function()
      require("nvterm.terminal").toggle "float"
    end,
    "toggle floating term",
  },

  ["<leader>sh"] = {
    function()
      require("nvterm.terminal").toggle "horizontal"
    end,
    "toggle horizontal term",
  },

  ["<leader>sv"] = {
    function()
      require("nvterm.terminal").toggle "vertical"
    end,
    "toggle vertical term",
  },
}

M.nvterm = {
  t = nvtermHotKeys,
  n = nvtermHotKeys,
}

M.telescope = {
  n = {
    -- theme switcher
    ["<leader>cs"] = { "<cmd> Telescope themes <CR>", "nvchad themes" },
  }
}

-- more keybinds!

return M
