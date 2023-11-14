local M = {}

M.setup = function(set_hl, get_hl, colors)
  -- Types
  set_hl("@lsp.type.namespace", { link = "@namespace" })
  set_hl("@lsp.type.comment", { link = "@comment" })
  set_hl("@lsp.type.type", { link = "@type" })

  --TODO: Add different highlights for each type of type

  set_hl("@lsp.type.class", { link = "@type" })
  set_hl("@lsp.type.enum", { link = "@type" })
  set_hl("@lsp.type.interface", { link = "@type" })
  set_hl("@lsp.type.struct", { link = "@structure" })
  set_hl("@lsp.type.typeParameter", { link = "@parameter" })
  set_hl("@lsp.type.parameter", { link = "@parameter" })
  set_hl("@lsp.type.variable", { link = "@variable" })
  set_hl("@lsp.type.property", { link = "@property" })
  set_hl("@lsp.type.enumMember", { link = "@constant" })
  set_hl("@lsp.type.event", { link = "@method" })
  set_hl("@lsp.type.function", { link = "@function" })
  set_hl("@lsp.type.method", { link = "@method" })
  set_hl("@lsp.type.macro", { link = "@macro" })
  set_hl("@lsp.type.keyword", { link = "@keyword" })
  set_hl("@lsp.type.keyword", { link = "@keyword" })
  set_hl("@lsp.type.modifier", { link = "@type.qualifier" })
  set_hl("@lsp.type.string", { link = "@string" })
  set_hl("@lsp.type.number", { link = "@number" })
  set_hl("@lsp.type.regexp", { link = "@string.regex" })
  set_hl("@lsp.type.operator", { link = "@operator" })
  set_hl("@lsp.type.decorator", { link = "@type.function" })
  -- Modifiers
  set_hl("@lsp.mod.deprecated", { strikethrough = true })
  set_hl("@lsp.mod.declaration", { underdashed = true })
  set_hl("@lsp.mod.readonly", { italic = true })
  set_hl("@lsp.mod.global", { fg = colors.red:mixed_rgb(colors.yellow, 0.4) })
  -- Type/modifier combinations
  set_hl("@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
  set_hl("@lsp.typemod.comment.documentation", { link = "@comment.documentation" })

  -- Clangd specific
  set_hl("@lsp.mod.globalScope", { link = "@lsp.mod.global" })
end

return M
