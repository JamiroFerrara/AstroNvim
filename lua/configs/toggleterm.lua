local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then return end
toggleterm.setup(astronvim.user_plugin_opts("plugins.toggleterm", {
  size = 75,
  open_mapping = [[<c-\>]],
  shading_factor = 2,
  direction = "float",
  start_in_insert = true,
  shell = "pwsh",
  close_on_exit = true,
  auto_scoll = true,
  persist_mode = false,
  autochdir = true,
  float_opts = {
    border = "curved",
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
}))
