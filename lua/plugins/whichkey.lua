local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

which_key.setup({
  plugins = {
    marks = true,       -- shows a list of your marks
    registers = true,   -- shows registers
    spelling = {
      enabled = true,   -- enable suggestions
      suggestions = 20,
    },
  },
  window = {
    border = "rounded", -- none, single, double, shadow
    position = "bottom",
    margin = { 1, 0, 1, 0 },
    padding = { 2, 2, 2, 2 },
    winblend = 0,
  },
  layout = {
    spacing = 6,
    align = "left",
  },
  ignore_missing = true, -- hide unbound mappings
})
