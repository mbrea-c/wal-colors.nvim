local M = {}

M.highlights_base = function(colors)
  local highlights = {}

  local function set_hl(name, highlights)
    highlights[name] = highlights
  end
  local function get_hl(name)
    return highlights[name]
  end
  set_hl("Normal", { guifg = colors.foreground, guibg = colors.background })
  set_hl("StatusLineNC", { guibg = colors.background, guifg = colors.background })
  set_hl("StatusLine", { guibg = colors.background, guifg = colors.background })
  set_hl("SignColumn", { guibg = colors.background, guifg = colors.background })
  set_hl("MsgArea", { guifg = colors.foreground, guibg = colors.background })
  set_hl("ModeMsg", { guifg = colors.foreground, guibg = colors.background })
  set_hl("MsgSeparator", { guifg = colors.foreground, guibg = colors.background })
  set_hl("SpellBad", { guifg = colors.color2 })
  set_hl("SpellCap", { guifg = colors.color6 })
  set_hl("SpellLocal", { guifg = colors.color4 })
  set_hl("SpellRare", { guifg = colors.color6 })
  set_hl("NormalNC", { guifg = colors.foreground, guibg = colors.background })
  set_hl("Pmenu", { guifg = colors.foreground, guibg = colors.background })
  set_hl("PmenuSel", { guifg = colors.background, guibg = colors.color4 })
  set_hl("WildMenu", { guifg = colors.color7, guibg = colors.color4 })
  set_hl("CursorLineNr", { guifg = colors.color1 })
  set_hl("Comment", { guifg = colors.color1 })
  set_hl("Folded", { guifg = colors.color4, guibg = colors.background })
  set_hl("FoldColumn", { guifg = colors.color4, guibg = colors.background })
  set_hl("LineNr", { guifg = colors.color8, guibg = colors.background })
  set_hl("FloatBorder", { guifg = colors.foreground, guibg = colors.background })
  set_hl("Whitespace", { guifg = colors.color1 })
  set_hl("VertSplit", { guifg = colors.background, guibg = colors.color8 })
  set_hl("CursorLine", { guibg = colors.shades.background.light })
  set_hl("CursorColumn", { guibg = colors.background })
  set_hl("ColorColumn", { guibg = colors.background })
  set_hl("NormalFloat", { guibg = colors.background })
  set_hl("NormalInactive", { guibg = colors.shades.background.lighter })
  set_hl("Visual", { guibg = colors.color1, guifg = colors.foreground })
  set_hl("VisualNOS", { guibg = colors.background })
  set_hl("WarningMsg", { guifg = colors.color3, guibg = colors.background })
  set_hl("DiffAdd", { guifg = colors.background, guibg = colors.color4 })
  set_hl("DiffChange", { guifg = colors.background, guibg = colors.color5 })
  set_hl("DiffDelete", { guifg = colors.background, guibg = colors.color11 })
  set_hl("QuickFixLine", { guibg = colors.color2 })
  set_hl("PmenuSbar", { guibg = colors.background })
  set_hl("PmenuThumb", { guibg = colors.color2 })
  set_hl("MatchParen", { guifg = colors.color4, guibg = colors.background })
  set_hl("Cursor", { guifg = colors.fomeground, guibg = colors.cursor })
  set_hl("lCursor", { guifg = colors.foreground, guibg = colors.cursor })
  set_hl("CursorIM", { guifg = colors.foreground, guibg = colors.cursor })
  set_hl("TermCursor", { guifg = colors.foreground, guibg = colors.cursor })
  set_hl("TermCursorNC", { guifg = colors.foreground, guibg = colors.cursor })
  set_hl("Conceal", { guifg = colors.color4, guibg = colors.background })
  set_hl("Directory", { guifg = colors.color4 })
  set_hl("SpecialKey", { guifg = colors.color4 })
  set_hl("Title", { guifg = colors.color4 })
  set_hl("ErrorMsg", { guifg = colors.color11, guibg = colors.background })
  set_hl("Search", { guifg = colors.foreground, guibg = colors.color1 })
  set_hl("IncSearch", { guifg = colors.foreground, guibg = colors.color1 })
  set_hl("Substitute", { guifg = colors.color1, guibg = colors.color6 })
  set_hl("MoreMsg", { guifg = colors.color5 })
  set_hl("Question", { guifg = colors.color5 })
  set_hl("EndOfBuffer", { guifg = colors.background })
  set_hl("NonText", { guifg = colors.color1 })
  set_hl("Variable", { guifg = colors.color5 })
  set_hl("String", { guifg = colors.color12 })
  set_hl("Character", { guifg = colors.color12 })
  set_hl("Constant", { guifg = colors.color5 })
  set_hl("Number", { guifg = colors.color5 })
  set_hl("Boolean", { guifg = colors.color5 })
  set_hl("Float", get_hl("NormalFloat"))
  set_hl("Identifier", { guifg = colors.color5 })
  set_hl("Function", { guifg = colors.color6 })
  set_hl("Operator", { guifg = colors.color6 })
  set_hl("Type", { guifg = colors.color5 })
  set_hl("StorageClass", { guifg = colors.color7 })
  set_hl("Structure", { guifg = colors.color6 })
  set_hl("Typedef", { guifg = colors.color6 })
  set_hl("Keyword", { guifg = colors.color6 })
  set_hl("Statement", { guifg = colors.color6 })
  set_hl("Conditional", { guifg = colors.color6 })
  set_hl("Repeat", { guifg = colors.color6 })
  set_hl("Label", { guifg = colors.color4 })
  set_hl("Exception", { guifg = colors.color6 })
  set_hl("Include", { guifg = colors.color6 })
  set_hl("PreProc", { guifg = colors.color6 })
  set_hl("Define", { guifg = colors.color6 })
  set_hl("Macro", { guifg = colors.color6 })
  set_hl("PreCondit", { guifg = colors.color6 })
  set_hl("Special", { guifg = colors.color6 })
  set_hl("SpecialChar", { guifg = colors.foreground })
  set_hl("Tag", { guifg = colors.color4 })
  set_hl("Debug", { guifg = colors.color11 })
  set_hl("Delimiter", { guifg = colors.foreground })
  set_hl("SpecialComment", { guifg = colors.color2 })
  set_hl("Ignore", { guifg = colors.color7, guibg = colors.background })
  set_hl("Todo", { guifg = colors.color11, guibg = colors.background })
  set_hl("Error", { guifg = colors.color11, guibg = colors.background })
  set_hl("TabLine", { guifg = colors.color2, guibg = colors.background })
  set_hl("TabLineSel", { guifg = colors.foreground, guibg = colors.background })
  set_hl("TabLineFill", { guifg = colors.foreground, guibg = colors.background })

  -- nvim-cmp

  set_hl("CmpItemAbbrDeprecated", { gui = "strikethrough", guifg = colors.color8, guibg = "NONE" })

  set_hl("CmpItemAbbrMatch", { guifg = colors.color4, guibg = "NONE" })
  set_hl("CmpItemAbbrMatchFuzzy", { guifg = colors.color4, guibg = "NONE" })

  set_hl("CmpItemKindVariable", { guifg = colors.color6, guibg = "NONE" })
  set_hl("CmpItemKindInterface", { guifg = colors.color6, guibg = "NONE" })
  set_hl("CmpItemKindText", { guifg = colors.color6, guibg = "NONE" })

  set_hl("CmpItemKindFunction", { guifg = colors.color5, guibg = "NONE" })
  set_hl("CmpItemKindMethod", { guifg = colors.color5, guibg = "NONE" })

  set_hl("CmpItemKindKeyword", { guifg = colors.foreground, guibg = "NONE" })
  set_hl("CmpItemKindProperty", { guifg = colors.foreground, guibg = "NONE" })
  set_hl("CmpItemKindUnit", { guifg = colors.foreground, guibg = "NONE" })

  -- treesitter

  -- These groups are for the neovim tree-sitter highlights.
  -- As of writing, tree-sitter support is a WIP, group names may color5.
  -- By default, most of these groups link to an appropriate Vim group,
  -- TSError -> Error for example, so you do not have to define these unless
  -- you explicitly want to support Treesitter's improved syntax awareness.

  -- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
  -- TSAttribute         = { };    -- (unstable) TODO: docs
  -- TSBoolean           = { };    -- For booleans.
  -- TSCharacter         = { };    -- For characters.
  -- TSComment           = { };    -- For color1 blocks.
  set_hl("TSNote", { guifg = colors.background, guibg = colors.color5 })
  set_hl("TSComment", { guifg = colors.color8 })
  set_hl("TSWarning", { guifg = colors.background, guibg = colors.color5 })
  set_hl("TSDanger", { guifg = colors.background, guibg = colors.color3 })
  set_hl("TSConstructor", { guifg = colors.color6 }) -- For constructor calls and definitions: `= { }` in Lua, and Java constructors)
  set_hl("TSConditional", { guifg = colors.color2 }) -- For keywords related to conditionnals)
  -- TSConstant          = { };    -- For constants
  -- TSConstBuiltin      = { };    -- For constant that are built in the language: `nil` in Lua.
  -- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
  -- TSError             = { };    -- For syntax/parser errors.
  -- TSException         = { };    -- For exception related keywords.
  set_hl("TSField", { guifg = colors.color12 }) -- For fields
  -- TSFloat             = { };    -- For floats.
  set_hl("TSFunction", { guifg = colors.color4, gui = "bold" }) -- For function (calls and definitions))
  -- TSFuncBuiltin       = { };    -- For builtin functions: `table.insert` in Lua.
  -- TSFuncMacro         = { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
  -- TSInclude           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
  set_hl("TSKeyword", { guifg = colors.color2, gui = "bold" }) -- For keywords that don't fall in previous categories.
  set_hl("TSKeywordFunction", { guifg = colors.shades.color2.darker, gui = "bold" }) -- For keywords used to define a fuction.
  set_hl("TSLabel", { guifg = colors.color7 }) -- For labels: `label:` in C and `:label:` in Lua.
  -- TSMethod            = { };    -- For method calls and definitions.
  -- TSNamespace         = { };    -- For identifiers referring to modules and namespaces.
  -- TSNone              = { };    -- TODO: docs
  set_hl("TSNumber", { guifg = colors.shades.color1.light }) -- For all numbers
  set_hl("TSOperator", { guifg = colors.color3 }) -- For any operator: `+`, but also `->` and `*` in C.
  set_hl("TSOperator", { guifg = colors.color3, gui = "bold" }) -- For keyword operators: `not`, but also `in` and `is` in Python.
  set_hl("TSParameter", { guifg = colors.color4 }) -- For parameters of a function.
  -- TSParameterReference= { };    -- For references to parameters of a function.
  set_hl("TSProperty", { guifg = colors.color4 }) -- Same as `TSField`.
  set_hl("TSPunctDelimiter", { guifg = colors.shades.color3.darker }) -- For delimiters ie: `.`
  set_hl("TSPunctBracket", { guifg = colors.foreground }) -- For brackets and parens.
  set_hl("TSPunctSpecial", { guifg = colors.color7 }) -- For special punctutation that does not fall in the catagories before.
  set_hl("TSRepeat", { guifg = colors.color2 }) -- For keywords related to loops.
  set_hl("TSString", { guifg = colors.color1 }) -- For strings.
  set_hl("TSStringRegex", { guifg = colors.color7 }) -- For regexes.
  set_hl("TSStringEscape", { guifg = colors.color6 }) -- For escape characters within a string.
  -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
  -- TSType              = { };    -- For types.
  -- TSTypeBuiltin       = { };    -- For builtin types.
  set_hl("TSVariableBuiltin", { guifg = colors.color11 }) -- Variable names that are defined by the languages, like `this` or `self`.

  -- TSTag               = { };    -- Tags like html tag names.
  -- TSTagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
  -- TSText              = { };    -- For strings considered text in a markup language.
  set_hl("TSTextReference", { guifg = colors.color8 })
  set_hl("TSMath", { guifg = colors.color1 }) -- For latex math
  -- TSEmphasis          = { };    -- For text to be represented with emphasis.
  -- TSUnderline         = { };    -- For text to be represented with an underline.
  -- TSStrike            = { };    -- For strikethrough text.
  -- TSTitle             = { };    -- Text that is part of a title.
  -- TSLiteral           = { };    -- Literal text.
  -- TSURI               = { };    -- Any URI like a link or email.

  -- LspTrouble
  set_hl("LspTroubleText", { guifg = colors.foreground })
  set_hl("LspTroubleCount", { guifg = colors.color6, guibg = colors.foreground })
  set_hl("LspTroubleNormal", { guifg = colors.foreground, guibg = colors.background })

  -- Illuminate
  set_hl("illuminatedWord", { guibg = colors.foreground })
  set_hl("illuminatedCurWord", { guibg = colors.foreground })

  -- diff
  set_hl("diffAdded", { guifg = colors.color4 })
  set_hl("diffRemoved", { guifg = colors.color11 })
  set_hl("diffChanged", { guifg = colors.color5 })
  set_hl("diffOldFile", { guifg = colors.color5 })
  set_hl("diffNewFile", { guifg = colors.color5 })
  set_hl("diffFile", { guifg = colors.color7 })
  set_hl("diffLine", { guifg = colors.color1 })
  set_hl("diffIndexLine", { guifg = colors.color6 })

  -- Neogit
  set_hl("NeogitBranch", { guifg = colors.color6 })
  set_hl("NeogitRemote", { guifg = colors.color6 })
  set_hl("NeogitHunkHeader", { guibg = colors.background, guifg = colors.foreground })
  set_hl("NeogitHunkHeaderHighlight", { guibg = colors.foreground, guifg = colors.color7 })
  set_hl("NeogitDiffContextHighlight", { guibg = colors.background, guifg = colors.foreground })
  set_hl("NeogitDiffDeleteHighlight", { guifg = colors.color11, guibg = colors.color11 })
  set_hl("NeogitDiffAddHighlight", { guifg = colors.color4, guibg = colors.color4 })

  -- GitGutter
  set_hl("GitGutterAdd", { guifg = colors.color4 }) -- diff mode: Added line |diff.txt|
  set_hl("GitGutterChange", { guifg = colors.color5 }) -- diff mode: Changed line |diff.txt|
  set_hl("GitGutterDelete", { guifg = colors.color11 }) -- diff mode: Deleted line |diff.txt|

  -- GitSigns
  set_hl("GitSignsAdd", { guifg = colors.color4 }) -- diff mode: Added line |diff.txt|
  set_hl("GitSignsChange", { guifg = colors.color5 }) -- diff mode: Changed line |diff.txt|
  set_hl("GitSignsDelete", { guifg = colors.color11 }) -- diff mode: Deleted line |diff.txt|

  -- Telescope
  set_hl("TelescopeBorder", { guifg = colors.color1, guibg = colors.background })
  set_hl("TelescopeNormal", { guifg = colors.foreground, guibg = colors.background })
  set_hl("TelescopeSelection", { guifg = colors.background, guibg = colors.color1 })

  -- Indent Blank Line
  set_hl("IndentBlanklineChar", { guifg = colors.color1, guibg = colors.background })

  -- NvimTree
  set_hl("NvimTreeNormal", { guifg = colors.foreground, guibg = colors.background })
  set_hl("NvimTreeNormalNC", { guifg = colors.foreground, guibg = colors.background })
  set_hl("NvimTreeRootFolder", { guifg = colors.color1 })
  set_hl("NvimTreeGitDirty", { guifg = colors.color5 })
  set_hl("NvimTreeGitNew", { guifg = colors.color4 })
  set_hl("NvimTreeGitDeleted", { guifg = colors.color11 })
  set_hl("NvimTreeSpecialFile", { guifg = colors.color6 })
  set_hl("NvimTreeIndentMarker", { guifg = colors.foreground })
  set_hl("NvimTreeImageFile", { guifg = colors.foreground })
  set_hl("NvimTreeSymlink", { guifg = colors.color7 })
  set_hl("NvimTreeFolderIcon", { guifg = colors.color2, guibg = colors.background })
  set_hl("NvimTreeStatusLineNC", { guibg = colors.background, guifg = colors.background })

  -- Scrollbar
  set_hl("ScrollbarHandle", { guifg = colors.shades.background.lightest, guibg = colors.shades.background.lightest })

  -- LspSaga
  set_hl("LspFloatWinNormal", { guibg = colors.shades.background.lighter })
  set_hl("LspFloatWinBorder", { guifg = colors.background })
  set_hl("LspSagaBorderTitle", { guifg = colors.color7 })
  set_hl("LspSagaHoverBorder", { guifg = colors.color7 })
  set_hl("LspSagaRenameBorder", { guifg = colors.color4 })
  set_hl("LspSagaDefPreviewBorder", { guifg = colors.color4 })
  set_hl("LspSagaCodeActionBorder", { guifg = colors.color7 })
  set_hl("LspSagaFinderSelection", { guifg = colors.color1 })
  set_hl("LspSagaCodeActionTitle", { guifg = colors.color7 })
  set_hl("LspSagaCodeActionContent", { guifg = colors.color6 })
  set_hl("LspSagaSignatureHelpBorder", { guifg = colors.color11 })
  set_hl("ReferencesCount", { guifg = colors.color6 })
  set_hl("DefinitionCount", { guifg = colors.color6 })
  set_hl("DefinitionIcon", { guifg = colors.color7 })
  set_hl("ReferencesIcon", { guifg = colors.color7 })
  set_hl("TargetWord", { guifg = colors.color7 })

  -- NeoVim
  set_hl("healthError", { guifg = colors.color11 })
  set_hl("healthSuccess", { guifg = colors.color4 })
  set_hl("healthWarning", { guifg = colors.color5 })

  -- BufferLine
  set_hl("BufferLineIndicatorSelected", { guifg = colors.color5 })
  set_hl("BufferLineFill", { guibg = colors.background })

  return highlights
end

return M
