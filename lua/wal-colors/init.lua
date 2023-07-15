local M = {}
local core = require("wal-colors.core")
local highlights = require("wal-colors.highlights")
local util = require("wal-colors.util")
local ColorSpec = core.ColorSpec

local default_opts = function()
  return {
    replace = true,
  }
end

--- Setup colorscheme specified by `config`. Takes either a configuration function
--- or a string matching a module name under "wal-colors.colorschemes"
--- @param config function|string
--- @param opts table|nil
function M.setup(config, opts)
  if opts == nil then
    opts = {}
  end
  opts = util.update_table(default_opts(), opts)
  if type(config) == "string" then
    config = require("wal-colors.colorschemes." .. config).highlights_base
  end
  local color_spec = ColorSpec.load()
  vim.opt.termguicolors = true
  highlights.highlight_all(color_spec, config, opts)
end

return M
