local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then return end
toggleterm.setup(astronvim.user_plugin_opts("plugins.toggleterm", {
  size = 100,
  open_mapping = [[<c-\>]],
  shading_factor = 2,
  direction = "vertical",
  shell = "pwsh",
  float_opts = {
    border = "curved",
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
}))
