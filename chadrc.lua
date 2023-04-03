---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "onedark",
  theme_toggle = { "onedark", "one_light" },
  transparency = true,

  nvdash = {
    header = {
      "░█████╗░███╗░░██╗░██████╗██╗██████╗░███████╗██╗░░░██╗",
      "██╔══██╗████╗░██║██╔════╝██║██╔══██╗██╔════╝██║░░░██║",
      "███████║██╔██╗██║╚█████╗░██║██║░░██║█████╗░░╚██╗░██╔╝",
      "██╔══██║██║╚████║░╚═══██╗██║██║░░██║██╔══╝░░░╚████╔╝░",
      "██║░░██║██║░╚███║██████╔╝██║██████╔╝███████╗░░╚██╔╝░░",
      "╚═╝░░╚═╝╚═╝░░╚══╝╚═════╝░╚═╝╚═════╝░╚══════╝░░░╚═╝░░░",
    },

    buttons = {
      { "  Find File", "Space + f + f", "Telescope find_files" },
      { "  Recent Files", "Space + f + o", "Telescope oldfiles" },
      { "  Find Word", "Space + f + w", "Telescope live_grep" },
      { "  Bookmarks", "Space + b + m", "Telescope marks" },
      { "  Themes", "Space + c + s", "Telescope themes" },
      { "  Mappings", "Space + c + h", "NvCheatsheet" },
    },
  },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
