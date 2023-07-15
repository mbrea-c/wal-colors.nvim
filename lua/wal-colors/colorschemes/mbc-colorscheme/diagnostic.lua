local M = {}

M.setup = function(set_hl, get_hl, colors)
  local error = colors.red:lightened(0.3):saturated(0.3)
  local warning = colors.yellow:lightened(0.3):saturated(0.3)
  local info = colors.foreground:lightened(0.5)
  local hint = colors.blue:lightened(0.3):saturated(0.3)

  -- See :h diagnostic-highlight
  set_hl("DiagnosticError", { bg = colors.background:darkened(0.1), fg = error })
  set_hl("DiagnosticWarn", { bg = colors.background:darkened(0.1), fg = warning })
  set_hl("DiagnosticInfo", { bg = colors.background:darkened(0.1), fg = info })
  set_hl("DiagnosticHint", { bg = colors.background:darkened(0.1), fg = hint })
  set_hl("DiagnosticUnnecessary", { link = "DiagnosticHint" })
  set_hl("DiagnosticUnderlineError", { undercurl = true, sp = error })
  set_hl("DiagnosticUnderlineWarn", { undercurl = true, sp = warning })
  set_hl("DiagnosticUnderlineInfo", { undercurl = true, sp = info })
  set_hl("DiagnosticUnderlineHint", { undercurl = true, sp = hint })
  set_hl("DiagnosticSignError", { fg = error })
  set_hl("DiagnosticSignWarn", { fg = warning })
  set_hl("DiagnosticSignInfo", { fg = info })
  set_hl("DiagnosticSignHint", { fg = hint })
end

return M
