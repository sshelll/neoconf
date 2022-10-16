require("github-theme").setup({
  theme_style = "dark_default",

  function_style = "NONE",
  comment_style = "NONE",
  keyword_style = "NONE",
  variable_style = "NONE",

  dark_float = true,

  dark_sidebar = false,
  sidebars = {"qf", "vista_kind", "terminal", "packer"},

  colors = {hint = "orange", error = "#ff0000"},

  -- Overwrite the highlight groups
  overrides = function(c)
    return {
      htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
      DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
      -- this will remove the highlight groups
      TSField = {},
    }
  end
})
