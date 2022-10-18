local M = {}

M.highlights_base = function(colors)
  local highlights = {}

  local function set_hl(name, hl)
    highlights[name] = hl
  end

  local function get_hl(name)
    return highlights[name]
  end

  set_hl("Normal", { fg = colors.foreground, bg = colors.background })
  set_hl("StatusLineNC", { bg = colors.background, fg = colors.background })
  set_hl("StatusLine", { bg = colors.background, fg = colors.background })
  set_hl("SignColumn", { bg = colors.background, fg = colors.background })
  set_hl("MsgArea", { fg = colors.foreground, bg = colors.background })
  set_hl("ModeMsg", { fg = colors.foreground, bg = colors.background })
  set_hl("MsgSeparator", { fg = colors.foreground, bg = colors.background })
  set_hl("SpellBad", { fg = colors.color2 })
  set_hl("SpellCap", { fg = colors.color6 })
  set_hl("SpellLocal", { fg = colors.color4 })
  set_hl("SpellRare", { fg = colors.color6 })
  set_hl("NormalNC", { fg = colors.foreground, bg = colors.background })
  set_hl("Pmenu", { fg = colors.foreground, bg = colors.background })
  set_hl("PmenuSel", { fg = colors.background, bg = colors.color4 })
  set_hl("WildMenu", { fg = colors.color7, bg = colors.color4 })
  set_hl("CursorLineNr", { fg = colors.color1 })
  set_hl("Comment", { fg = colors.color1 })
  set_hl("Folded", { fg = colors.color4, bg = colors.background })
  set_hl("FoldColumn", { fg = colors.color4, bg = colors.background })
  set_hl("LineNr", { fg = colors.color8, bg = colors.background })
  set_hl("FloatBorder", { fg = colors.shades.foreground.darkest, bg = colors.background })
  set_hl("Whitespace", { fg = colors.color1 })
  set_hl("VertSplit", { fg = colors.background, bg = colors.color8 })
  set_hl("CursorLine", { bg = colors.shades.background.light })
  set_hl("CursorColumn", { bg = colors.background })
  set_hl("ColorColumn", { bg = colors.background })
  set_hl("NormalFloat", { bg = colors.background })
  set_hl("NormalInactive", { bg = colors.shades.background.lighter })
  set_hl("Visual", { bg = colors.color1, fg = colors.foreground })
  set_hl("VisualNOS", { bg = colors.background })
  set_hl("WarningMsg", { fg = colors.color3, bg = colors.background })
  set_hl("DiffAdd", { fg = colors.background, bg = colors.color4 })
  set_hl("DiffChange", { fg = colors.background, bg = colors.color5 })
  set_hl("DiffDelete", { fg = colors.background, bg = colors.color11 })
  set_hl("QuickFixLine", { bg = colors.color2 })
  set_hl("PmenuSbar", { bg = colors.background })
  set_hl("PmenuThumb", { bg = colors.color2 })
  set_hl("MatchParen", { fg = colors.color4, bg = colors.background })
  set_hl("Cursor", { fg = colors.fomeground, bg = colors.cursor })
  set_hl("lCursor", { fg = colors.foreground, bg = colors.cursor })
  set_hl("CursorIM", { fg = colors.foreground, bg = colors.cursor })
  set_hl("TermCursor", { fg = colors.foreground, bg = colors.cursor })
  set_hl("TermCursorNC", { fg = colors.foreground, bg = colors.cursor })
  set_hl("Conceal", { fg = colors.color4, bg = colors.background })
  set_hl("Directory", { fg = colors.color4 })
  set_hl("SpecialKey", { fg = colors.color4 })
  set_hl("Title", { fg = colors.color4 })
  set_hl("ErrorMsg", { fg = colors.color11, bg = colors.background })
  set_hl("Search", { fg = colors.foreground, bg = colors.color1 })
  set_hl("IncSearch", { fg = colors.foreground, bg = colors.color1 })
  set_hl("Substitute", { fg = colors.color1, bg = colors.color6 })
  set_hl("MoreMsg", { fg = colors.color5 })
  set_hl("Question", { fg = colors.color5 })
  set_hl("EndOfBuffer", { fg = colors.background })
  set_hl("NonText", { fg = colors.color1 })
  set_hl("Variable", { fg = colors.color5 })
  set_hl("String", { fg = colors.color12 })
  set_hl("Character", { fg = colors.color12 })
  set_hl("Constant", { fg = colors.color5 })
  set_hl("Number", { fg = colors.color5 })
  set_hl("Boolean", { fg = colors.color5 })
  set_hl("Float", get_hl("NormalFloat"))
  set_hl("Identifier", { fg = colors.color5 })
  set_hl("Function", { fg = colors.color6 })
  set_hl("Operator", { fg = colors.color6 })
  set_hl("Type", { fg = colors.color5 })
  set_hl("StorageClass", { fg = colors.color7 })
  set_hl("Structure", { fg = colors.color6 })
  set_hl("Typedef", { fg = colors.color6 })
  set_hl("Keyword", { fg = colors.color6 })
  set_hl("Statement", { fg = colors.color6 })
  set_hl("Conditional", { fg = colors.color6 })
  set_hl("Repeat", { fg = colors.color6 })
  set_hl("Label", { fg = colors.color4 })
  set_hl("Exception", { fg = colors.color6 })
  set_hl("Include", { fg = colors.color6 })
  set_hl("PreProc", { fg = colors.color6 })
  set_hl("Define", { fg = colors.color6 })
  set_hl("Macro", { fg = colors.color6 })
  set_hl("PreCondit", { fg = colors.color6 })
  set_hl("Special", { fg = colors.color6 })
  set_hl("SpecialChar", { fg = colors.foreground })
  set_hl("Tag", { fg = colors.color4 })
  set_hl("Debug", { fg = colors.color11 })
  set_hl("Delimiter", { fg = colors.foreground })
  set_hl("SpecialComment", { fg = colors.color2 })
  set_hl("Ignore", { fg = colors.color7, bg = colors.background })
  set_hl("Todo", { fg = colors.color11, bg = colors.background })
  set_hl("Error", { fg = colors.color11, bg = colors.background })
  set_hl("TabLine", { fg = colors.color2, bg = colors.background })
  set_hl("TabLineSel", { fg = colors.foreground, bg = colors.background })
  set_hl("TabLineFill", { fg = colors.foreground, bg = colors.background })

  -- nvim-cmp

  set_hl("CmpItemAbbrDeprecated", { strikethrough = true, fg = colors.color8, bg = "NONE" })

  set_hl("CmpItemAbbrMatch", { fg = colors.color4, bg = "NONE" })
  set_hl("CmpItemAbbrMatchFuzzy", { fg = colors.color4, bg = "NONE" })

  set_hl("CmpItemKindVariable", { fg = colors.color6, bg = "NONE" })
  set_hl("CmpItemKindInterface", { fg = colors.color6, bg = "NONE" })
  set_hl("CmpItemKindText", { fg = colors.color6, bg = "NONE" })

  set_hl("CmpItemKindFunction", { fg = colors.color5, bg = "NONE" })
  set_hl("CmpItemKindMethod", { fg = colors.color5, bg = "NONE" })

  set_hl("CmpItemKindKeyword", { fg = colors.foreground, bg = "NONE" })
  set_hl("CmpItemKindProperty", { fg = colors.foreground, bg = "NONE" })
  set_hl("CmpItemKindUnit", { fg = colors.foreground, bg = "NONE" })

  -- treesitter

  -- These groups are for the neovim tree-sitter highlights.
  -- As of writing, tree-sitter support is a WIP, group names may color5.
  -- By default, most of these groups link to an appropriate Vim group,
  -- @error -> Error for example, so you do not have to define these unless
  -- you explicitly want to support Treesitter's improved syntax awareness.

  -- @annotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
  -- @attribute         = { };    -- (unstable) TODO: docs
  -- @boolean           = { };    -- For booleans.
  -- @character         = { };    -- For characters.
  -- @comment           = { };    -- For color1 blocks.
  set_hl("@note", { fg = colors.background, bg = colors.color5 })
  set_hl("@comment", { fg = colors.color8 })
  set_hl("@warning", { fg = colors.background, bg = colors.color5 })
  set_hl("@danger", { fg = colors.background, bg = colors.color3 })
  set_hl("@constructor", { fg = colors.color6 }) -- For constructor calls and definitions: `= { }` in Lua, and Java constructors)
  set_hl("@conditional", { fg = colors.color2 }) -- For keywords related to conditionnals)
  -- @constant          = { };    -- For constants
  -- @constBuiltin      = { };    -- For constant that are built in the language: `nil` in Lua.
  -- @constMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
  -- @error             = { };    -- For syntax/parser errors.
  -- @exception         = { };    -- For exception related keywords.
  set_hl("@field", { fg = colors.color12 }) -- For fields
  -- @float             = { };    -- For floats.
  set_hl("@function", { fg = colors.color4, bold = true }) -- For function (calls and definitions))
  -- @funcBuiltin       = { };    -- For builtin functions: `table.insert` in Lua.
  -- @funcMacro         = { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
  -- @include           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
  set_hl("@keyword", { fg = colors.color2, bold = true }) -- For keywords that don't fall in previous categories.
  set_hl("@keywordFunction", { fg = colors.shades.color2.darker, bold = true, italic = true }) -- For keywords used to define a fuction.
  set_hl("@label", { fg = colors.color7 }) -- For labels: `label:` in C and `:label:` in Lua.
  -- @method            = { };    -- For method calls and definitions.
  -- @namespace         = { };    -- For identifiers referring to modules and namespaces.
  -- @none              = { };    -- TODO: docs
  set_hl("@number", { fg = colors.shades.color1.light }) -- For all numbers
  set_hl("@operator", { fg = colors.color3 }) -- For any operator: `+`, but also `->` and `*` in C.
  set_hl("@operator", { fg = colors.color3, bold = true }) -- For keyword operators: `not`, but also `in` and `is` in Python.
  set_hl("@parameter", { fg = colors.color4 }) -- For parameters of a function.
  -- @parameterReference= { };    -- For references to parameters of a function.
  set_hl("@property", { fg = colors.color4 }) -- Same as `@field`.
  set_hl("@punctDelimiter", { fg = colors.shades.color3.darker }) -- For delimiters ie: `.`
  set_hl("@punctBracket", { fg = colors.foreground }) -- For brackets and parens.
  set_hl("@punctSpecial", { fg = colors.color7 }) -- For special punctutation that does not fall in the catagories before.
  set_hl("@repeat", { fg = colors.color2 }) -- For keywords related to loops.
  set_hl("@string", { fg = colors.color1 }) -- For strings.
  set_hl("@stringRegex", { fg = colors.color7 }) -- For regexes.
  set_hl("@stringEscape", { fg = colors.color6 }) -- For escape characters within a string.
  -- @symbol            = { };    -- For identifiers referring to symbols or atoms.
  -- @type              = { };    -- For types.
  -- @typeBuiltin       = { };    -- For builtin types.
  set_hl("@variableBuiltin", { fg = colors.color11 }) -- Variable names that are defined by the languages, like `this` or `self`.

  -- @tag               = { };    -- Tags like html tag names.
  -- @tagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
  -- @text              = { };    -- For strings considered text in a markup language.
  set_hl("@textReference", { fg = colors.color8 })
  set_hl("@math", { fg = colors.color1 }) -- For latex math
  -- @emphasis          = { };    -- For text to be represented with emphasis.
  -- @underline         = { };    -- For text to be represented with an underline.
  -- @strike            = { };    -- For strikethrough text.
  -- @title             = { };    -- Text that is part of a title.
  -- @literal           = { };    -- Literal text.
  -- @uRI               = { };    -- Any URI like a link or email.

  -- LspTrouble
  set_hl("LspTroubleText", { fg = colors.foreground })
  set_hl("LspTroubleCount", { fg = colors.color6, bg = colors.foreground })
  set_hl("LspTroubleNormal", { fg = colors.foreground, bg = colors.background })

  -- Illuminate
  set_hl("illuminatedWord", { bg = colors.foreground })
  set_hl("illuminatedCurWord", { bg = colors.foreground })

  -- diff
  set_hl("diffAdded", { fg = colors.color4 })
  set_hl("diffRemoved", { fg = colors.color11 })
  set_hl("diffChanged", { fg = colors.color5 })
  set_hl("diffOldFile", { fg = colors.color5 })
  set_hl("diffNewFile", { fg = colors.color5 })
  set_hl("diffFile", { fg = colors.color7 })
  set_hl("diffLine", { fg = colors.color1 })
  set_hl("diffIndexLine", { fg = colors.color6 })

  -- Neogit
  set_hl("NeogitBranch", { fg = colors.color6 })
  set_hl("NeogitRemote", { fg = colors.color6 })
  set_hl("NeogitHunkHeader", { bg = colors.background, fg = colors.foreground })
  set_hl("NeogitHunkHeaderHighlight", { bg = colors.foreground, fg = colors.color7 })
  set_hl("NeogitDiffContextHighlight", { bg = colors.background, fg = colors.foreground })
  set_hl("NeogitDiffDeleteHighlight", { fg = colors.color11, bg = colors.color11 })
  set_hl("NeogitDiffAddHighlight", { fg = colors.color4, bg = colors.color4 })

  -- GitGutter
  set_hl("GitGutterAdd", { fg = colors.color4 }) -- diff mode: Added line |diff.txt|
  set_hl("GitGutterChange", { fg = colors.color5 }) -- diff mode: Changed line |diff.txt|
  set_hl("GitGutterDelete", { fg = colors.color11 }) -- diff mode: Deleted line |diff.txt|

  -- GitSigns
  set_hl("GitSignsAdd", { fg = colors.color4 }) -- diff mode: Added line |diff.txt|
  set_hl("GitSignsChange", { fg = colors.color5 }) -- diff mode: Changed line |diff.txt|
  set_hl("GitSignsDelete", { fg = colors.color11 }) -- diff mode: Deleted line |diff.txt|

  -- Telescope
  set_hl("TelescopeBorder", { fg = colors.color1, bg = colors.background })
  set_hl("TelescopeNormal", { fg = colors.foreground, bg = colors.background })
  set_hl("TelescopeSelection", { fg = colors.background, bg = colors.color1 })

  -- Indent Blank Line
  set_hl("IndentBlanklineChar", { fg = colors.shades.background.lighter })
  set_hl("IndentBlanklineIndent1", { bg = colors.shades.background.dark })
  set_hl("IndentBlanklineIndent2", { bg = colors.background })
  set_hl("IndentBlanklineContextChar", { fg = colors.shades.color4.darkest })
  set_hl("IndentBlanklineContextStart", { underdotted = true })

  -- NvimTree
  set_hl("NvimTreeNormal", { fg = colors.foreground, bg = colors.background })
  set_hl("NvimTreeNormalNC", { fg = colors.foreground, bg = colors.background })
  set_hl("NvimTreeRootFolder", { fg = colors.color1 })
  set_hl("NvimTreeGitDirty", { fg = colors.color5 })
  set_hl("NvimTreeGitNew", { fg = colors.color4 })
  set_hl("NvimTreeGitDeleted", { fg = colors.color11 })
  set_hl("NvimTreeSpecialFile", { fg = colors.color6 })
  set_hl("NvimTreeIndentMarker", { fg = colors.foreground })
  set_hl("NvimTreeImageFile", { fg = colors.foreground })
  set_hl("NvimTreeSymlink", { fg = colors.color7 })
  set_hl("NvimTreeFolderIcon", { fg = colors.color2, bg = colors.background })
  set_hl("NvimTreeStatusLineNC", { bg = colors.background, fg = colors.background })

  -- Scrollbar
  set_hl("ScrollbarHandle", { fg = colors.shades.background.lightest, bg = colors.shades.background.lightest })

  -- LspSaga
  set_hl("LspFloatWinNormal", { bg = colors.shades.background.lighter })
  set_hl("LspFloatWinBorder", { fg = colors.background })
  set_hl("LspSagaBorderTitle", { fg = colors.color7 })
  set_hl("LspSagaHoverBorder", { fg = colors.color7 })
  set_hl("LspSagaRenameBorder", { fg = colors.color4 })
  set_hl("LspSagaDefPreviewBorder", { fg = colors.color4 })
  set_hl("LspSagaCodeActionBorder", { fg = colors.color7 })
  set_hl("LspSagaFinderSelection", { fg = colors.color1 })
  set_hl("LspSagaCodeActionTitle", { fg = colors.color7 })
  set_hl("LspSagaCodeActionContent", { fg = colors.color6 })
  set_hl("LspSagaSignatureHelpBorder", { fg = colors.color11 })
  set_hl("ReferencesCount", { fg = colors.color6 })
  set_hl("DefinitionCount", { fg = colors.color6 })
  set_hl("DefinitionIcon", { fg = colors.color7 })
  set_hl("ReferencesIcon", { fg = colors.color7 })
  set_hl("TargetWord", { fg = colors.color7 })

  -- NeoVim
  set_hl("healthError", { fg = colors.color11 })
  set_hl("healthSuccess", { fg = colors.color4 })
  set_hl("healthWarning", { fg = colors.color5 })

  -- BufferLine
  set_hl("BufferLineIndicatorSelected", { fg = colors.color5 })
  set_hl("BufferLineFill", { bg = colors.background })

  return highlights
end

return M
