local M = {}

M.setup = function(set_hl, get_hl, colors)
  set_hl("TreesitterContext", { bg = colors.background:lightened():out() })
  set_hl("TreesitterContextBottom", { underline = true, sp = colors.foreground:darkened(0.2):out() })
end

return M
