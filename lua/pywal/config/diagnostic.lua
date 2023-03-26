local M = {}

M.setup = function(set_hl, get_hl, colors)
  set_hl("DiagnosticError", { bg = colors.shades.background.dark, fg = colors.shades.color1.lightest })
  set_hl("DiagnosticWarn", { bg = colors.shades.background.dark, fg = colors.shades.color3.lightest })
  set_hl("DiagnosticInfo", { bg = colors.shades.background.dark, fg = colors.shades.foreground.lightest })
  set_hl("DiagnosticHint", { bg = colors.shades.background.dark, fg = colors.shades.color4.lightest })
  set_hl("DiagnosticUnderlineError", { link = "DiagnosticError" })
  set_hl("DiagnosticUnderlineWarn", { link = "DiagnosticWarn" })
  set_hl("DiagnosticUnderlineInfo", { link = "DiagnosticInfo" })
  set_hl("DiagnosticUnderlineHint", { link = "DiagnosticHint" })
  --DiagnosticVirtualTextError
  --DiagnosticVirtualTextWarn
  --DiagnosticVirtualTextInfo
  --DiagnosticVirtualTextHint
  --DiagnosticFloatingError
  --DiagnosticFloatingWarn
  --DiagnosticFloatingInfo
  --DiagnosticFloatingHint
  --DiagnosticSignError
  --DiagnosticSignWarn
  --DiagnosticSignInfo
  --DiagnosticSignHint
end

return M
