local M = {}
local core = require("wal-colors.core")
local highlights = require("wal-colors.highlights")
local ColorSpec = core.ColorSpec

--- Setup colorscheme specified by `config`
--- @param config function
function M.setup(config)
  local color_spec = ColorSpec.load()
  vim.opt.termguicolors = true
  highlights.highlight_all(color_spec, config)
end

return M
