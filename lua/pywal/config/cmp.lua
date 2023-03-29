local M = {}

M.setup = function(set_hl, get_hl, colors)
  set_hl("CmpGhostText", { link = "@comment" })
end

return M
