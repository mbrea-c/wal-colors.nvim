local M = {}
local core = require("wal-colors.core")
local highlights = require("wal-colors.highlights")
local ColorSpec = core.ColorSpec

--- Setup colorscheme specified by `config`. Takes either a configuration function
--- or a string matching a module name under "wal-colors.colorschemes"
--- @param config function|string
function M.setup(config)
  if type(config) == "string" then
    config = require("wal-colors.colorschemes." .. config).highlights_base
  end
  local color_spec = ColorSpec.load()
  vim.opt.termguicolors = true
  highlights.highlight_all(color_spec, config)
end

return M
