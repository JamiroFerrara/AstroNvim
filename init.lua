local impatient_ok, impatient = pcall(require, "impatient")
if impatient_ok then impatient.enable_profile() end

for _, source in ipairs {
  "core.utils",
  "core.options",
  "core.bootstrap",
  "core.plugins",
  "core.autocmds",
  "core.mappings",
  "configs.which-key-register",
} do
  local status_ok, fault = pcall(require, source)
  if not status_ok then vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault) end
end

local default_providers = {
	"node",
	"perl",
	"python3",
	"ruby",
}

for _, provider in ipairs(default_providers) do
	vim.g["loaded_" .. provider .. "_provider"] = 0
end

astronvim.conditional_func(astronvim.user_plugin_opts("polish", nil, false))

vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.hidden = true
vim.o.relativenumber = true
vim.o.number = true
vim.o.termguicolors = true
vim.o.spell = true
vim.o.title = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.list = true
vim.o.scrolloff=15
vim.o.sidescrolloff=15
vim.o.splitright=true
vim.o.confirm = true
vim.o.exrc = true
vim.o.backup = true
vim.o.autoindent = true
vim.o.expandtab = true
vim.o.softtabstop = -1
vim.o.textwidth = 80
vim.o.splitbelow = true
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.laststatus = 2

vim.api.nvim_command('set noruler')
vim.api.nvim_command('set autoread')
vim.api.nvim_command('au FocusGained,BufEnter * :checktime')
vim.api.nvim_command('set noshowmode')
vim.api.nvim_command('set nofixendofline')
vim.api.nvim_command('set nostartofline')
vim.api.nvim_command('set shiftround')
vim.api.nvim_command('set backspace=indent,eol,start')
vim.api.nvim_command('set backupdir=~/.local/share/nvim/backup//')
vim.api.nvim_command('set clipboard=unnamedplus')
vim.api.nvim_command('set nojoinspaces')
vim.api.nvim_command('set wildmode=longest:full,full')
vim.api.nvim_command('set nowrap')
vim.api.nvim_command('set mouse=a')
vim.api.nvim_command('set undofile')
vim.api.nvim_command('set noswapfile')
vim.api.nvim_command('set nospell')

vim.api.nvim_command('set foldmethod=syntax')
vim.api.nvim_command('set foldnestmax=1')
vim.api.nvim_command('set nofoldenable')
vim.api.nvim_command('set foldlevel=2')

vim.g.mapleader = " "

--require('github-theme').setup()
vim.api.nvim_command('colorscheme nord')
