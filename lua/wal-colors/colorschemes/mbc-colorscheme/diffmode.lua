local M = {}

M.setup = function(set_hl, get_hl, colors)
  -- See :h diagnostic-highlight
  set_hl("DiffAdd", { bg = colors.background:mixed_rgb(colors.green, 0.15) })
  set_hl("DiffChange", { bg = colors.background:mixed_rgb(colors.yellow, 0.15) })
  set_hl("DiffDelete", { bg = colors.background:mixed_rgb(colors.red, 0.15), fg = colors.background })
  set_hl(
    "DiffText",
    { bg = colors.background:mixed_rgb(colors.yellow, 0.4), italic = true, bold = true, undercurl = true }
  )
end

return M
