local M = {}

M.setup = function(set_hl, get_hl, colors)
  local error = colors.shades.color1.lightest
  local warning = colors.shades.color3.lightest
  local info = colors.shades.foreground.lightest
  local hint = colors.shades.color4.lightest

  set_hl("DiagnosticError", { underdotted = true, bg = colors.shades.background.dark, fg = error })
  set_hl("DiagnosticWarn", { underdotted = true, bg = colors.shades.background.dark, fg = warning })
  set_hl("DiagnosticInfo", { underdotted = true, bg = colors.shades.background.dark, fg = info })
  set_hl("DiagnosticHint", { underdotted = true, bg = colors.shades.background.dark, fg = hint })
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
