local M = {}

M.setup = function(set_hl, get_hl, colors)
  set_hl("CornelisHole", { link = "Todo" })
  set_hl("CornelisTitle", { link = "Title" })
  set_hl("CornelisError", { link = "DiagnosticError" })
  set_hl("CornelisErrorWarning", { link = "CornelisError" })
  set_hl("CornelisWarn", { link = "DiagnosticWarn" })
  set_hl("CornelisUnsolvedMeta", { link = "DiagnosticWarn" })
  set_hl("CornelisUnsolvedConstraint", { link = "DiagnosticWarn" })
  set_hl("CornelisMissingDefinition", { link = "DiagnosticWarn" })
  set_hl("CornelisTypeChecks", { link = "DiagnosticWarn" })

  set_hl("CornelisKeyword", { link = "@keyword" })
  set_hl("CornelisSymbol", { link = "@symbol" })
  set_hl("CornelisType", { link = "@type" })
  set_hl("CornelisRecord", { link = "@type" })
  set_hl("CornelisModule", { link = "@namespace" })
  set_hl("CornelisFunction", { link = "@function" })
  set_hl("CornelisMacro", { link = "@macro" })
  set_hl("CornelisOperator", { link = "@operator" })
  -- Different kind of identifiers
  set_hl("CornelisName", { link = "@variable" })
  set_hl("CornelisArgument", { link = "@parameter" })
  set_hl("CornelisBound", { link = "@variable" })
  set_hl("CornelisGeneralizable", { link = "@variable" })
  set_hl("CornelisField", { link = "@field" })

  -- Inductive and coinductive constructors
  set_hl("CornelisConstructor", { link = "@constructor" })
  set_hl("CornelisInductiveConstructor", { link = "@constructor" })
  set_hl("CornelisConductiveConstructor", { link = "@constructor" })

  -- Primitives
  set_hl("CornelisPragma", { link = "@macro" })
  set_hl("CornelisPostulate", { link = "@type.abstract" })
  set_hl("CornelisPrimitive", { link = "@constant.builtin" })
  set_hl("CornelisPrimitiveType", { link = "@type.builtin" })

  -- Constants
  set_hl("CornelisNumber", { link = "@number" })
  set_hl("CornelisString", { link = "@string" })
  set_hl("CornelisComment", { link = "@comment" })

  --[[

hi def link CornelisCatchAllClause       Folded

--]]
end

return M
