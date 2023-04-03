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

M.nvchad = {
  n = {
    ["<leader>op"] = { '<cmd>lua require("base46").toggle_transparency()<CR>', "toggle transparency" },
  },
}

M.telescope = {
  n = {
    -- theme switcher
    ["<leader>km"] = { "<cmd>Telescope keymaps<CR>", "nvim keymaps" },
  },
}

M.terraform = {
  n = {
    -- terraform commands
    ["<leader>ti"] = {
      '<cmd>lua require("nvterm.terminal").send("terraform init", "horizontal")<CR>',
      "terraform init",
    },
    ["<leader>tv"] = {
      '<cmd>lua require("nvterm.terminal").send("terraform validate", "horizontal")<CR>',
      "terraform validate",
    },
    ["<leader>tp"] = {
      '<cmd>lua require("nvterm.terminal").send("terraform plan", "horizontal")<CR>',
      "terraform plan",
    },
    ["<leader>ta"] = {
      '<cmd>lua require("nvterm.terminal").send("terraform apply", "horizontal")<CR>',
      "terraform apply",
    },
    ["<leader>taa"] = {
      '<cmd>lua require("nvterm.terminal").send("terraform apply --auto-approve", "horizontal")<CR>',
      "terraform apply (with auto approve)",
    },
  },
}

M.http_client = {
  n = {
    -- hurl commands
    ["<leader>uc"] = {
      '<cmd>lua require("nvterm.terminal").send("hurl " .. vim.fn.expand(\'%\'), "horizontal")<CR>',
      "Run the current hurl file",
    },
    ["<leader>ua"] = {
      '<cmd>lua require("nvterm.terminal").send("hurl *.hurl", "horizontal")<CR>',
      "Run all hurl files in the current dir",
    },
    ["<leader>ut"] = { "<cmd>!hurl --test %<CR>", "Test the current hurl file" },
    ["<leader>uu"] = { "<cmd>!hurl --test *.hurl<CR>", "Test all hurl files in the current dir" },
  },
}

M.dashboard = {
  n = {
    ["<C-p>"] = { "<cmd>Dashboard<CR>", "open dashboard" },
  },
}

-- more keybinds!

return M
