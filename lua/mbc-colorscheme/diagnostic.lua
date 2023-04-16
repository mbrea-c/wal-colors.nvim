local M = {}

M.setup = function(set_hl, get_hl, colors)
  local error = colors.red:lightened(0.3):saturated(0.3)
  local warning = colors.yellow:lightened(0.3):saturated(0.3)
  local info = colors.foreground:lightened(0.5)
  local hint = colors.blue:lightened(0.3):saturated(0.3)

  set_hl("DiagnosticError", { underdotted = true, bg = colors.background:darkened(0.1), fg = error })
  set_hl("DiagnosticWarn", { underdotted = true, bg = colors.background:darkened(0.1), fg = warning })
  set_hl("DiagnosticInfo", { underdotted = true, bg = colors.background:darkened(0.1), fg = info })
  set_hl("DiagnosticHint", { underdotted = true, bg = colors.background:darkened(0.1), fg = hint })
  set_hl("DiagnosticUnderlineError", { italic = true, underdotted = true, sp = error })
  set_hl("DiagnosticUnderlineWarn", { italic = true, underdotted = true, sp = warning })
  set_hl("DiagnosticUnderlineInfo", { italic = true, underdotted = true, sp = info })
  set_hl("DiagnosticUnderlineHint", { italic = true, underdotted = true, sp = hint })
  set_hl("DiagnosticSignError", { fg = error })
  set_hl("DiagnosticSignWarn", { fg = warning })
  set_hl("DiagnosticSignInfo", { fg = info })
  set_hl("DiagnosticSignHint", { fg = hint })
  --DiagnosticVirtualTextError
  --DiagnosticVirtualTextWarn
  --DiagnosticVirtualTextInfo
  --DiagnosticVirtualTextHint
  --DiagnosticFloatingError
  --DiagnosticFloatingWarn
  --DiagnosticFloatingInfo
  --DiagnosticFloatingHint
end

return M
