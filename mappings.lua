---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

local nvtermHotKeys = {
  ["<leader>tf"] = {
    function()
      require("nvterm.terminal").toggle "float"
    end,
    "toggle floating term",
  },

  ["<leader>th"] = {
    function()
      require("nvterm.terminal").toggle "horizontal"
    end,
    "toggle horizontal term",
  },

  ["<leader>tv"] = {
    function()
      require("nvterm.terminal").toggle "vertical"
    end,
    "toggle vertical term",
  },
}

M.nvterm = {
  t = {
    -- toggle in terminal mode
    ["<leader>tf"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },

    ["<leader>th"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },

    ["<leader>tv"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle vertical term",
    },
  },

  n = {
    -- toggle in normal mode
    ["<leader>tf"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },

    ["<leader>th"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },

    ["<leader>tv"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle vertical term",
    },

    -- new

    ["<leader>h"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "new horizontal term",
    },

    ["<leader>v"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "new vertical term",
    },
  },
}

M.telescope = {
  n = {
    -- theme switcher
    ["<leader>cs"] = { "<cmd> Telescope themes <CR>", "nvchad themes" },
  }
}

-- more keybinds!

return M
