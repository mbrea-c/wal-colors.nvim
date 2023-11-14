local M = {}

M.setup = function(set_hl, get_hl, colors)
  -- Rainbow brackets
  set_hl("rainbowcol1", { fg = colors.color1:saturated(0.2) })
  set_hl("rainbowcol2", { fg = colors.color2:saturated(0.2) })
  set_hl("rainbowcol3", { fg = colors.color3:saturated(0.2) })
  set_hl("rainbowcol4", { fg = colors.color4:saturated(0.2) })
  set_hl("rainbowcol5", { fg = colors.color5:saturated(0.2) })
  set_hl("rainbowcol6", { fg = colors.color6:saturated(0.2) })
  set_hl("rainbowcol7", { fg = colors.color1:darkened(0.2):saturated(0.2) })
end
return M
