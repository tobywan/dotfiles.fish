-- theme from
-- https://github.com/rmehri01/onenord.nvim
local ok, catppuccin = pcall(require, "onenord")
if not ok then
    return
end

local colors = require("onenord.colors").load()

require('onenord').setup({
  theme = nil, -- "dark" or "light". Alternatively, remove the option and set vim.o.background instead
  borders = true, -- Split window borders
  fade_nc = false, -- Fade non-current windows, making them more distinguishable
  -- Style that is applied to various groups: see `highlight-args` for options
  styles = {
    comments = "NONE",
    strings = "NONE",
    keywords = "NONE",
    functions = "NONE",
    variables = "NONE",
    diagnostics = "underline",
  },
  disable = {
    background = false, -- Disable setting the background color
    cursorline = false, -- Disable the cursorline
    eob_lines = true, -- Hide the end-of-buffer lines
  },
  -- Inverse highlight for different groups
  inverse = {
    match_paren = false,
  },
  custom_highlights = {
	  Ignore = { fg = colors.cyan, bg = colors.bg, style = "NONE"},
      htmlH1 = { fg = colors.cyan, style = "NONE"},
      htmlH2 = { fg = colors.red, style = "NONE"},
      htmlH3 = { fg = colors.green, style = "NONE"},
      htmlH4 = { fg = colors.yellow, style = "NONE"},
      htmlH5 = { fg = colors.purple, style = "NONE"},
      markdownBold = { fg = colors.purple, style = "NONE"},
      markdownH1 = { fg = colors.dark_blue, style = "NONE"},
      markdownH2 = { fg = colors.blue, style = "NONE"},
      markdownH3 = { fg = colors.cyan, style = "NONE"},
      MatchParen = { fg = colors.yellow, bg = colors.none, style = "NONE"},
      ModeMsg = { fg = colors.blue, style = "NONE"},
      MoreMsg = { fg = colors.blue, style = "NONE"},
      Search = { fg = colors.blue, bg = colors.selection, style = "NONE"},
      Title = { fg = colors.green, bg = colors.none, style = "NONE"},
      WildMenu = { fg = colors.yellow, bg = colors.none, style = "NONE"},
      TSStrong = { fg = colors.purple, style = "NONE"},
      TSTitle = { fg = colors.blue, style = "NONE"},
      TSNote = { fg = colors.info, style = "NONE"},
      TSWarning = { fg = colors.warn, style = "NONE"},
      TSDanger = { fg = colors.error, style = "NONE"},
      LspSignatureActiveParameter = { fg = colors.none, bg = colors.highlight_dark, style = "NONE"},
      CmpItemAbbrMatch = { fg = colors.blue, style = "NONE"},
      TelescopeMatching = { fg = colors.yellow, style = "NONE"},
      NvimTreeSymlink = { fg = colors.cyan, style = "NONE"},
      NvimTreeRootFolder = { fg = colors.green, style = "NONE"},
      NvimTreeExecFile = { fg = colors.green, style = "NONE"},
      NvimTreeImageFile = { fg = colors.purple, style = "NONE"},
      WhichKey = { fg = colors.purple, style = "NONE"},
      BufferCurrentMod = { fg = colors.yellow, bg = colors.bg, style = "NONE"},
      BufferCurrentTarget = { fg = colors.red, bg = colors.bg, style = "NONE"},
      BufferVisibleMod = { fg = colors.yellow, bg = colors.bg, style = "NONE"},
      BufferVisibleTarget = { fg = colors.red, bg = colors.bg, style = "NONE"},
      BufferInactiveTarget = { fg = colors.red, bg = colors.active, style = "NONE"},
      HopNextKey = { fg = colors.fg_light, style = "NONE"},
      HopNextKey1 = { fg = colors.cyan, style = "NONE"},
      LightspeedUnlabeledMatch = { fg = colors.fg_light, style = "NONE"},
  }, -- Overwrite default highlight groups
  custom_colors = {
	  bg = "#0f111a",
	  diff_add_bg = "#003010",
	  diff_change_bg = "#002030",
	  active = "#353B49",
	  float = "#3B4252",
	  highlight= "#2f212a",
	  highlight_dark = "#2f212a",
	  selection = "#4C566A",
  }, -- Overwrite default colors
})

vim.cmd([[
  colorscheme onenord
]])

