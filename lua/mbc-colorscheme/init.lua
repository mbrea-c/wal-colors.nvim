local M = {}

M.highlights_base = function(colors)
  local configs = {
    require("mbc-colorscheme.treesitter"),
    require("mbc-colorscheme.cornelis"),
    require("mbc-colorscheme.treesitter-context"),
    require("mbc-colorscheme.diagnostic"),
    require("mbc-colorscheme.cmp"),
    require("mbc-colorscheme.lsp-semantic-highlight"),
  }

  local highlights = {}

  local function set_hl(name, hl)
    highlights[name] = hl
  end

  local function get_hl(name)
    return highlights[name]
  end

  for _, config in ipairs(configs) do
    config.setup(set_hl, get_hl, colors)
  end

  set_hl("Normal", { fg = colors.foreground:out(), bg = colors.background:out() })
  set_hl("StatusLineNC", { bg = colors.background:out(), fg = colors.background:out() })
  set_hl("StatusLine", { bg = colors.background:out(), fg = colors.background:out() })
  set_hl("SignColumn", { bg = colors.background:darkened(0.1):out(), fg = colors.background:out() })
  set_hl("MsgArea", { fg = colors.foreground:out(), bg = colors.background:out() })
  set_hl("ModeMsg", { fg = colors.foreground:out(), bg = colors.background:out() })
  set_hl("MsgSeparator", { fg = colors.foreground:out(), bg = colors.background:out() })

  -- Spelling
  set_hl("SpellBad", { fg = colors.color1:out(), undercurl = true })
  set_hl("SpellCap", { fg = colors.color5:out(), undercurl = true })
  set_hl("SpellLocal", { fg = colors.color3:out(), undercurl = true })
  set_hl("SpellRare", { fg = colors.color6:out(), undercurl = true })

  set_hl("NormalNC", { fg = colors.foreground:out(), bg = colors.background:out() })
  set_hl("Pmenu", { fg = colors.foreground:out(), bg = colors.background:out() })
  set_hl("PmenuSel", { fg = colors.background:out(), bg = colors.color4:out() })
  set_hl("WildMenu", { fg = colors.color7:out(), bg = colors.color4:out() })
  set_hl("CursorLineNr", { fg = colors.color1:out() })
  set_hl("Comment", { fg = colors.color1:out() })
  set_hl("Folded", { fg = colors.color4:out(), bg = colors.background:out() })
  set_hl("FoldColumn", { fg = colors.color4:out(), bg = colors.background:out() })
  set_hl("LineNr", { fg = colors.color8:out(), bg = colors.background:darkened():out() })
  set_hl("FloatBorder", { fg = colors.foreground:darkened(0.3):out(), bg = colors.background:out() })
  set_hl("Whitespace", { fg = colors.color1:out() })
  set_hl("VertSplit", { fg = colors.background:out(), bg = colors.color8:out() })
  set_hl("CursorLine", { bg = colors.background:lightened(0.1):out() })
  set_hl("CursorColumn", { bg = colors.background:out() })
  set_hl("ColorColumn", { bg = colors.background:out() })
  set_hl("NormalFloat", { bg = colors.background:darkened(0.1):out() })
  set_hl("NormalInactive", { bg = colors.background:lightened(0.1):out() })
  set_hl("Visual", { bg = colors.color1:out(), fg = colors.foreground:out() })
  set_hl("VisualNOS", { bg = colors.background:out() })
  set_hl("WarningMsg", { fg = colors.color3:out(), bg = colors.background:out() })
  set_hl("DiffAdd", { fg = colors.background:out(), bg = colors.color4:out() })
  set_hl("DiffChange", { fg = colors.background:out(), bg = colors.color5:out() })
  set_hl("DiffDelete", { fg = colors.background:out(), bg = colors.color11:out() })
  set_hl("QuickFixLine", { bg = colors.color2:out() })
  set_hl("PmenuSbar", { bg = colors.background:out() })
  set_hl("PmenuThumb", { bg = colors.color2:out() })
  set_hl("MatchParen", { fg = colors.color4:out(), bg = colors.background:out() })
  set_hl("Cursor", { fg = colors.foreground:out(), bg = colors.cursor:out() })
  set_hl("lCursor", { fg = colors.foreground:out(), bg = colors.cursor:out() })
  set_hl("CursorIM", { fg = colors.foreground:out(), bg = colors.cursor:out() })
  set_hl("TermCursor", { fg = colors.foreground:out(), bg = colors.cursor:out() })
  set_hl("TermCursorNC", { fg = colors.foreground:out(), bg = colors.cursor:out() })
  set_hl("Conceal", { fg = colors.color4:out(), bg = colors.background:out() })
  set_hl("Directory", { fg = colors.color4:out() })
  set_hl("SpecialKey", { fg = colors.color4:out() })
  set_hl("Title", { fg = colors.color4:out() })
  set_hl("ErrorMsg", { fg = colors.color11:out(), bg = colors.background:out() })
  set_hl("Search", { fg = colors.foreground:out(), bg = colors.color1:out() })
  set_hl("IncSearch", { fg = colors.foreground:out(), bg = colors.color1:out() })
  set_hl("Substitute", { fg = colors.color1:out(), bg = colors.color6:out() })
  set_hl("MoreMsg", { fg = colors.color5:out() })
  set_hl("Question", { fg = colors.color5:out() })
  set_hl("EndOfBuffer", { fg = colors.background:out() })
  set_hl("NonText", { fg = colors.color8:out() })
  set_hl("Variable", { fg = colors.color5:out() })
  set_hl("String", { fg = colors.color12:out() })
  set_hl("Character", { fg = colors.color12:out() })
  set_hl("Constant", { fg = colors.color5:out() })
  set_hl("Number", { fg = colors.color5:out() })
  set_hl("Boolean", { fg = colors.color5:out() })
  set_hl("Float", { fg = colors.color5:out() })
  set_hl("Identifier", { fg = colors.color5:out() })
  set_hl("Function", { fg = colors.color6:out() })
  set_hl("Operator", { fg = colors.color6:out() })
  set_hl("Type", { fg = colors.color5:out() })
  set_hl("StorageClass", { fg = colors.color7:out() })
  set_hl("Structure", { fg = colors.color6:out() })
  set_hl("Typedef", { fg = colors.color6:out() })
  set_hl("Keyword", { fg = colors.color6:out() })
  set_hl("Statement", { fg = colors.color6:out() })
  set_hl("Conditional", { fg = colors.color6:out() })
  set_hl("Repeat", { fg = colors.color6:out() })
  set_hl("Label", { fg = colors.color4:out() })
  set_hl("Exception", { fg = colors.color6:out() })
  set_hl("Include", { fg = colors.color6:out() })
  set_hl("PreProc", { fg = colors.color6:out() })
  set_hl("Define", { fg = colors.color6:out() })
  set_hl("Macro", { fg = colors.color6:out() })
  set_hl("PreCondit", { fg = colors.color6:out() })
  set_hl("Special", { fg = colors.color6:out() })
  set_hl("SpecialChar", { fg = colors.foreground:out() })
  set_hl("Tag", { fg = colors.color4:out() })
  set_hl("Debug", { fg = colors.color11:out() })
  set_hl("Delimiter", { fg = colors.foreground:out() })
  set_hl("SpecialComment", { fg = colors.color2:out() })
  set_hl("Ignore", { fg = colors.color7:out(), bg = colors.background:out() })
  set_hl("Todo", { fg = colors.color11:out(), bg = colors.background:out() })
  set_hl("Error", { fg = colors.color11:out(), bg = colors.background:out() })
  set_hl("TabLine", { fg = colors.color2:out(), bg = colors.background:out() })
  set_hl("TabLineSel", { fg = colors.foreground:out(), bg = colors.background:out() })
  set_hl("TabLineFill", { fg = colors.foreground:out(), bg = colors.background:out() })

  -- LspTrouble
  set_hl("LspTroubleText", { fg = colors.foreground:out() })
  set_hl("LspTroubleCount", { fg = colors.color6:out(), bg = colors.foreground:out() })
  set_hl("LspTroubleNormal", { fg = colors.foreground:out(), bg = colors.background:out() })

  -- Illuminate
  set_hl("illuminatedWord", { bg = colors.foreground:out() })
  set_hl("illuminatedCurWord", { bg = colors.foreground:out() })

  -- Rainbow brackets
  set_hl("rainbowcol1", { fg = colors.color1:darkened(0.3):out() })
  set_hl("rainbowcol2", { fg = colors.color2:darkened(0.3):out() })
  set_hl("rainbowcol3", { fg = colors.color3:darkened(0.3):out() })
  set_hl("rainbowcol4", { fg = colors.color4:darkened(0.3):out() })
  set_hl("rainbowcol5", { fg = colors.color5:darkened(0.3):out() })
  set_hl("rainbowcol6", { fg = colors.color6:darkened(0.3):out() })
  set_hl("rainbowcol7", { fg = colors.color1:lightened(0.3):out() })

  -- diff
  set_hl("diffAdded", { fg = colors.color4:out() })
  set_hl("diffRemoved", { fg = colors.color11:out() })
  set_hl("diffChanged", { fg = colors.color5:out() })
  set_hl("diffOldFile", { fg = colors.color5:out() })
  set_hl("diffNewFile", { fg = colors.color5:out() })
  set_hl("diffFile", { fg = colors.color7:out() })
  set_hl("diffLine", { fg = colors.color1:out() })
  set_hl("diffIndexLine", { fg = colors.color6:out() })

  -- Neogit
  set_hl("NeogitBranch", { fg = colors.color6:out() })
  set_hl("NeogitRemote", { fg = colors.color6:out() })
  set_hl("NeogitHunkHeader", { bg = colors.background:out(), fg = colors.foreground:out() })
  set_hl("NeogitHunkHeaderHighlight", { bg = colors.foreground:out(), fg = colors.color7:out() })
  set_hl("NeogitDiffContextHighlight", { bg = colors.background:out(), fg = colors.foreground:out() })
  set_hl("NeogitDiffDeleteHighlight", { fg = colors.color11:out(), bg = colors.color11:out() })
  set_hl("NeogitDiffAddHighlight", { fg = colors.color4:out(), bg = colors.color4:out() })

  -- GitGutter
  set_hl("GitGutterAdd", { fg = colors.color4:out() })     -- diff mode: Added line |diff.txt|
  set_hl("GitGutterChange", { fg = colors.color5:out() })  -- diff mode: Changed line |diff.txt|
  set_hl("GitGutterDelete", { fg = colors.color11:out() }) -- diff mode: Deleted line |diff.txt|

  -- GitSigns
  set_hl("GitSignsAdd", { fg = colors.color4:out(), bg = colors.background:darkened(0.1):out() })     -- diff mode: Added line |diff.txt|
  set_hl("GitSignsChange", { fg = colors.color5:out(), bg = colors.background:darkened(0.1):out() })  -- diff mode: Changed line |diff.txt|
  set_hl("GitSignsDelete", { fg = colors.color11:out(), bg = colors.background:darkened(0.1):out() }) -- diff mode: Deleted line |diff.txt|

  -- Telescope
  set_hl("TelescopeBorder", { fg = colors.color1:out(), bg = colors.background:out() })
  set_hl("TelescopeNormal", { fg = colors.foreground:out(), bg = colors.background:out() })
  set_hl("TelescopeSelection", { fg = colors.background:out(), bg = colors.color1:out() })

  -- Indent Blank Line
  set_hl("IndentBlanklineChar", { fg = colors.background:lightened(0.2):out() })
  set_hl("IndentBlanklineIndent1", { bg = colors.background:darkened(0.1):out() })
  set_hl("IndentBlanklineIndent2", { bg = colors.background:out() })
  set_hl("IndentBlanklineContextChar", { fg = colors.color4:darkened(0.3):out() })
  set_hl("IndentBlanklineContextStart", { underdotted = true })

  -- NvimTree
  set_hl("NvimTreeNormal", { fg = colors.foreground:out(), bg = colors.background:out() })
  set_hl("NvimTreeNormalNC", { fg = colors.foreground:out(), bg = colors.background:out() })
  set_hl("NvimTreeRootFolder", { fg = colors.color1:out() })
  set_hl("NvimTreeGitDirty", { fg = colors.color5:out() })
  set_hl("NvimTreeGitNew", { fg = colors.color4:out() })
  set_hl("NvimTreeGitDeleted", { fg = colors.color11:out() })
  set_hl("NvimTreeSpecialFile", { fg = colors.color6:out() })
  set_hl("NvimTreeIndentMarker", { fg = colors.foreground:out() })
  set_hl("NvimTreeImageFile", { fg = colors.foreground:out() })
  set_hl("NvimTreeSymlink", { fg = colors.color7:out() })
  set_hl("NvimTreeFolderIcon", { fg = colors.color2:out(), bg = colors.background:out() })
  set_hl("NvimTreeStatusLineNC", { bg = colors.background:out(), fg = colors.background:out() })

  -- Scrollbar
  set_hl(
    "ScrollbarHandle",
    { fg = colors.background:lightened(0.3):out(), bg = colors.background:lightened(0.3):out() }
  )

  -- LspSaga
  set_hl("LspFloatWinNormal", { bg = colors.background:lightened(0.2):out() })
  set_hl("LspFloatWinBorder", { fg = colors.background:out() })
  set_hl("LspSagaBorderTitle", { fg = colors.color7:out() })
  set_hl("LspSagaHoverBorder", { fg = colors.color7:out() })
  set_hl("LspSagaRenameBorder", { fg = colors.color4:out() })
  set_hl("LspSagaDefPreviewBorder", { fg = colors.color4:out() })
  set_hl("LspSagaCodeActionBorder", { fg = colors.color7:out() })
  set_hl("LspSagaFinderSelection", { fg = colors.color1:out() })
  set_hl("LspSagaCodeActionTitle", { fg = colors.color7:out() })
  set_hl("LspSagaCodeActionContent", { fg = colors.color6:out() })
  set_hl("LspSagaSignatureHelpBorder", { fg = colors.color11:out() })
  set_hl("ReferencesCount", { fg = colors.color6:out() })
  set_hl("DefinitionCount", { fg = colors.color6:out() })
  set_hl("DefinitionIcon", { fg = colors.color7:out() })
  set_hl("ReferencesIcon", { fg = colors.color7:out() })
  set_hl("TargetWord", { fg = colors.color7:out() })

  -- NeoVim
  set_hl("healthError", { fg = colors.color11:out() })
  set_hl("healthSuccess", { fg = colors.color4:out() })
  set_hl("healthWarning", { fg = colors.color5:out() })

  -- BufferLine
  set_hl("BufferLineIndicatorSelected", { fg = colors.color5:out() })
  set_hl("BufferLineFill", { bg = colors.background:out() })

  return highlights
end

return M
