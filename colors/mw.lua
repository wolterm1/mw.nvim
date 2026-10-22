vim.o.background = "dark"
vim.cmd("highlight clear")
vim.g.colors_name = "mw"

local set = vim.api.nvim_set_hl
local c = {
	bg = "#181818",
	fg = "#e8e8e8",
	muted = "#919191",
	comment = "#ff9b21",
	string = "#79bf46",
	keyword = "#eae2b9",
	control = "#ffdd33",
	syntax = "#bfc5bf",
	parameter = "#e2e2e2",
	error = "#c22121",
	warning = "#c2aa21",
	info = "#ffdd33",

	selection = "#b0b0b0",
	selection_match = "#707070",
	word_match = "#2d2d2d",
}

-- Editor
--
set(0, "Directory", { fg = "#ffdd33" })
set(0, "Normal", { fg = c.fg, bg = c.bg })
set(0, "NormalNC", { fg = c.fg, bg = c.bg })
set(0, "NormalFloat", { fg = c.fg, bg = "#2d2d2d" })
set(0, "FloatBorder", { fg = "#4c4c4c", bg = "#2d2d2d" })
set(0, "Cursor", { fg = c.bg, bg = "#afadad" })
set(0, "Visual", { fg = c.bg, bg = c.selection })
set(0, "VisualNOS", { link = "Visual" })
set(0, "Search", { fg = c.bg, bg = c.selection })
set(0, "CurSearch", { fg = c.bg, bg = c.selection })
set(0, "IncSearch", { fg = c.bg, bg = c.selection })
set(0, "MatchParen", { bg = c.word_match, bold = true })
set(0, "LineNr", { fg = "#757575" })
set(0, "CursorLineNr", { fg = c.fg, bold = true })
set(0, "SignColumn", { bg = c.bg })
set(0, "StatusLine", { fg = "#fff7c7", bg = "#282828" })
set(0, "StatusLineNC", { fg = "#919191", bg = "#282828" })
set(0, "TabLine", { fg = c.muted, bg = "#2e2e2e" })
set(0, "TabLineSel", { fg = c.fg, bg = c.bg })
set(0, "Pmenu", { fg = c.fg, bg = "#2d2d2d" })
set(0, "PmenuSel", { fg = c.fg, bg = "#4c4c4c" })
set(0, "NonText", { fg = "#555555" })
set(0, "SpecialKey", { fg = "#555555" })

-- Traditional syntax groups
set(0, "Comment", { fg = c.comment })
set(0, "String", { fg = c.string })
set(0, "Character", { fg = c.string })
set(0, "Keyword", { fg = c.keyword })
set(0, "Statement", { fg = c.control })
set(0, "Conditional", { fg = c.control })
set(0, "Repeat", { fg = c.control })
set(0, "Operator", { fg = c.syntax })
set(0, "Type", { fg = c.syntax })
set(0, "Constant", { fg = c.syntax })
set(0, "Number", { fg = c.syntax })
set(0, "Boolean", { fg = c.syntax })
set(0, "Identifier", { fg = c.fg })
set(0, "Function", { fg = c.fg })
set(0, "Delimiter", { fg = c.syntax })
set(0, "Special", { fg = c.syntax })
set(0, "PreProc", { fg = c.keyword })
set(0, "Error", { fg = c.error })

-- Tree-sitter captures
set(0, "@comment", { fg = c.comment })
set(0, "@string", { fg = c.string })
set(0, "@string.json", { fg = c.fg })
set(0, "@property.json", { fg = c.fg })
set(0, "@keyword", { fg = c.keyword })
set(0, "@keyword.conditional", { fg = c.control })
set(0, "@keyword.repeat", { fg = c.control })
set(0, "@keyword.return", { fg = c.control })
set(0, "@keyword.import", { fg = c.control })
set(0, "@operator", { fg = c.syntax })
set(0, "@punctuation", { fg = c.syntax })
set(0, "@constant", { fg = c.syntax })
set(0, "@variable.builtin", { fg = c.syntax })
set(0, "@type", { fg = c.syntax })
set(0, "@type.builtin", { fg = c.keyword })
set(0, "@module", { fg = c.muted })
set(0, "@variable.parameter", { fg = c.parameter })
set(0, "@function.macro", { fg = c.syntax })

-- LSP semantic tokens
set(0, "@lsp.type.parameter", { fg = c.parameter })
set(0, "@lsp.type.type", { fg = c.syntax })
set(0, "@lsp.type.namespace", { fg = c.muted })
set(0, "@lsp.type.macro", { fg = c.syntax })

-- Diagnostics and references
set(0, "DiagnosticError", { fg = c.error })
set(0, "DiagnosticWarn", { fg = c.warning })
set(0, "DiagnosticInfo", { fg = c.info })
set(0, "DiagnosticHint", { fg = "#b267e6" })
set(0, "DiagnosticUnderlineError", { undercurl = true, sp = c.error })
set(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = c.warning })
set(0, "LspReferenceText", { bg = c.word_match })
set(0, "LspReferenceRead", { bg = c.word_match })
set(0, "LspReferenceWrite", { bg = c.word_match })
