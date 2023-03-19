local M = {}

M.setup = function(set_hl, get_hl, colors)
  set_hl("TreesitterContext", { bg = colors.shades.background.light })
  set_hl("TreesitterContextBottom", { underline = true, sp = colors.shades.foreground.darker })
end

return M
