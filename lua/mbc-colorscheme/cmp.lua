local M = {}

M.setup = function(set_hl, get_hl, colors)
  set_hl("CmpGhostText", { fg = colors.color8:out() })
  set_hl("CmpItemAbbrDeprecated", { strikethrough = true, fg = colors.color8:out(), bg = "NONE" })

  set_hl("CmpItemAbbrMatch", { fg = colors.color4:out(), bg = "NONE" })
  set_hl("CmpItemAbbrMatchFuzzy", { fg = colors.color4:out(), bg = "NONE" })

  set_hl("CmpItemKindVariable", { fg = colors.color6:out(), bg = "NONE" })
  set_hl("CmpItemKindInterface", { fg = colors.color6:out(), bg = "NONE" })
  set_hl("CmpItemKindText", { fg = colors.color6:out(), bg = "NONE" })

  set_hl("CmpItemKindFunction", { fg = colors.color5:out(), bg = "NONE" })
  set_hl("CmpItemKindMethod", { fg = colors.color5:out(), bg = "NONE" })

  set_hl("CmpItemKindKeyword", { fg = colors.foreground:out(), bg = "NONE" })
  set_hl("CmpItemKindProperty", { fg = colors.foreground:out(), bg = "NONE" })
  set_hl("CmpItemKindUnit", { fg = colors.foreground:out(), bg = "NONE" })
end

return M
