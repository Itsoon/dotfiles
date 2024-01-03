---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "glorious",
  -- theme_toggle = { "glorious", "one_light" },
  theme_toggle = { "glorious", "glorious" },
  
  hl_override = highlights.override,
  hl_add = highlights.add,
}
M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
