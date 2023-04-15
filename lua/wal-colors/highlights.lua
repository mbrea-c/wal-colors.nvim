local M = {}

local Color = require("wal-colors.color").Color
local ColorSpec = require("wal-colors.core").ColorSpec

--- Maps all colors in the table to their hex representation.
--- @param val table
--- @return table
local function map_colors(val)
  local mapped = {}
  for k, v in pairs(val) do
    if type(v) == "table" and getmetatable(v) == Color then
      mapped[k] = v:out()
    else
      mapped[k] = v
    end
  end
  return mapped
end

local hi = function(name, val)
  vim.api.nvim_set_hl(0, name, map_colors(val))
end

--- Highlights all groups as specified in the config table, parameterized by
--- colors.
--- @param colors ColorSpec
--- @param config function
--- @return nil
function M.highlight_all(colors, config)
  local base_highlights = config(colors)
  for group, properties in pairs(base_highlights) do
    hi(group, properties)
  end
end

return M
