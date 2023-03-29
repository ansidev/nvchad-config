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
    ["<leader>km"] = { "<cmd> Telescope keymaps <CR>", "NeoVim keymaps" },
  }
}

M.terraform = {
  n = {
    -- terraform commands
    ["<leader>ti"] = { ":!terraform init<CR>", "terraform init" },
    ["<leader>tv"] = { ":!terraform validate<CR>", "terraform validate" },
    ["<leader>tp"] = { ":!terraform plan<CR>", "terraform plan" },
    ["<leader>ta"] = { ":!terraform apply<CR>", "terraform apply" },
    ["<leader>taa"] = { ":!terraform apply --auto-approve<CR>", "terraform apply (with auto approve)" },
  }
}

-- more keybinds!

return M
