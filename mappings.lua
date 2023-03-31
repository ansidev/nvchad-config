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
    ["<leader>ti"] = { ":lua require(\"nvterm.terminal\").send(\"terraform init\", \"horizontal\")<CR>", "terraform init" },
    ["<leader>tv"] = { ":lua require(\"nvterm.terminal\").send(\"terraform validate\", \"horizontal\")<CR>", "terraform validate" },
    ["<leader>tp"] = { ":lua require(\"nvterm.terminal\").send(\"terraform plan\", \"horizontal\")<CR>", "terraform plan" },
    ["<leader>ta"] = { ":lua require(\"nvterm.terminal\").send(\"terraform apply\", \"horizontal\")<CR>", "terraform apply" },
    ["<leader>taa"] = { ":lua require(\"nvterm.terminal\").send(\"terraform apply --auto-approve\", \"horizontal\")<CR>", "terraform apply (with auto approve)" },
  }
}

-- more keybinds!

return M
