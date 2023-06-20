local M = {}

M.setup = function(set_hl, get_hl, colors)
  set_hl("CmpGhostText", { fg = colors.bright_black })
  set_hl("CmpItemAbbrDeprecated", { strikethrough = true, fg = colors.bright_black, bg = "NONE" })

  set_hl("CmpItemAbbrMatch", { fg = colors.blue, bg = "NONE" })
  set_hl("CmpItemAbbrMatchFuzzy", { fg = colors.blue, bg = "NONE" })

  set_hl("CmpItemKindVariable", { fg = colors.cyan, bg = "NONE" })
  set_hl("CmpItemKindInterface", { fg = colors.cyan, bg = "NONE" })
  set_hl("CmpItemKindText", { fg = colors.cyan, bg = "NONE" })

  set_hl("CmpItemKindFunction", { fg = colors.magenta, bg = "NONE" })
  set_hl("CmpItemKindMethod", { fg = colors.magenta, bg = "NONE" })

  set_hl("CmpItemKindKeyword", { fg = colors.foreground, bg = "NONE" })
  set_hl("CmpItemKindProperty", { fg = colors.foreground, bg = "NONE" })
  set_hl("CmpItemKindUnit", { fg = colors.foreground, bg = "NONE" })
end

return M
