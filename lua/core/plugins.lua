local astro_plugins = {
  -- Plugin manager
  ["wbthomason/packer.nvim"] = {},

  -- Optimiser
  ["lewis6991/impatient.nvim"] = {},

  -- Copilot
  ["github/copilot.vim"] = {},

  -- Nvim Comment
  ["terrortylor/nvim-comment"] = {},

  -- Css Color
  ["ap/vim-css-color"] = {},

  -- Lua functions
  ["nvim-lua/plenary.nvim"] = { module = "plenary" },

  -- Github Colorscheme
  ["projekt0n/github-nvim-theme"] = {},

  -- Popup API
  ["nvim-lua/popup.nvim"] = {},

  -- Harpoon
  ["ThePrimeagen/harpoon"] = {},

  -- Vim Wiki
  ["vimwiki/vimwiki"] = {},

  -- Lightspeed
  ['ggandor/lightspeed.nvim'] = {},

  --Wilder nvim 
  ['gelguy/wilder.nvim'] = {
		config = function()
			local present, wilder = pcall(require, "wilder")
			if not present then
				return
			end
			wilder.setup({ modes = { ":", "/", "?" } })
			wilder.set_option(
				"renderer",
				wilder.popupmenu_renderer(wilder.popupmenu_palette_theme({
					-- 'single', 'double', 'rounded' or 'solid'
					-- can also be a list of 8 characters, see :h wilder#popupmenu_palette_theme() for more details
					border = "rounded",
					max_height = "75%", -- max height of the palette
					min_height = 0, -- set to the same as 'max_height' for a fixed height window
					prompt_position = "top", -- 'top' or 'bottom' to set the location of the prompt
					reverse = 0, -- set to 1 to reverse the order of the list, use in combination with 'prompt_position'
					left = { " ", wilder.popupmenu_devicons() },
					highlighter = wilder.basic_highlighter(),
				}))
			)
		end,
  },
  
  --Wilder nvim 
  ['roxma/nvim-yarp'] = {
    cmd = { 
      "pip install -r requirements.txt",
    }
  },
  
  -- Focus window manager
  ["beauwilliams/focus.nvim"] = {},

  -- haya14busa/is.vim
  ['haya14busa/is.vim'] = {},
  
  -- nvim/Surround
  ['kylechui/nvim-surround'] = {},

  -- nvim shade
  -- ['sunjon/shade.nvim'] = {},

  -- substitute 
  ['gbprod/substitute.nvim'] = {},

  -- Indent detection
  ["Darazaki/indent-o-matic"] = {
    event = "BufReadPost",
    config = function() require "configs.indent-o-matic" end,
  },

  -- Neovim UI Enhancer
  ["stevearc/dressing.nvim"] = {
    event = "VimEnter",
    config = function() require "configs.dressing" end,
  },

  -- Cursorhold fix
  ["antoinemadec/FixCursorHold.nvim"] = {
    event = { "BufRead", "BufNewFile" },
    config = function() vim.g.cursorhold_updatetime = 100 end,
  },

  -- Smarter Splits
  ["mrjones2014/smart-splits.nvim"] = {
    module = "smart-splits",
    config = function() require "configs.smart-splits" end,
  },

  -- Icons
  ["kyazdani42/nvim-web-devicons"] = {
    event = "VimEnter",
    config = function() require "configs.icons" end,
  },

  -- Bufferline
  ["akinsho/bufferline.nvim"] = {
    after = "nvim-web-devicons",
    config = function() require "configs.bufferline" end,
  },

  -- Better buffer closing
  ["famiu/bufdelete.nvim"] = { cmd = { "Bdelete", "Bwipeout" } },

  -- File explorer
  ["nvim-neo-tree/neo-tree.nvim"] = {
    branch = "v2.x",
    module = "neo-tree",
    cmd = "Neotree",
    requires = { { "MunifTanjim/nui.nvim", module = "nui" } },
    setup = function() vim.g.neo_tree_remove_legacy_commands = true end,
    config = function() require "configs.neo-tree" end,
  },

  ['MunifTanjim/nui.nvim'] = { cmd = { } },

  ["VonHeikemen/fine-cmdline.nvim"] = {
    requires = { { "MunifTanjim/nui.nvim" } },
  },

  -- Statusline
  ["feline-nvim/feline.nvim"] = {
    after = "nvim-web-devicons",
    config = function() require "configs.feline" end,
  },

  -- Parenthesis highlighting
  ["p00f/nvim-ts-rainbow"] = { after = "nvim-treesitter" },

  -- Autoclose tags
  ["windwp/nvim-ts-autotag"] = { after = "nvim-treesitter" },

  -- Context based commenting
  ["JoosepAlviste/nvim-ts-context-commentstring"] = { after = "nvim-treesitter" },

  -- Syntax highlighting
  ["JamiroFerrara/nvim-treesitter"] = {
    run = ":TSUpdate",
    event = { "BufRead", "BufNewFile" },
    cmd = {
      "TSInstall",
      "TSInstallInfo",
      "TSInstallSync",
      "TSUninstall",
      "TSUpdate",
      "TSUpdateSync",
      "TSDisableAll",
      "TSEnableAll",
    },
    config = function() require "configs.treesitter" end,
  },

  ["nvim-treesitter/playground"] = {},

  -- Snippet collection
  ["rafamadriz/friendly-snippets"] = { opt = true },

  -- Snippet engine
  ["L3MON4D3/LuaSnip"] = {
    module = "luasnip",
    wants = "friendly-snippets",
    config = function() require "configs.luasnip" end,
  },

  -- Completion engine
  ["hrsh7th/nvim-cmp"] = {
    event = "InsertEnter",
    config = function() require "configs.cmp" end,
  },

  -- Snippet completion source
  ["saadparwaiz1/cmp_luasnip"] = {
    after = "nvim-cmp",
    config = function() astronvim.add_user_cmp_source "luasnip" end,
  },

  -- Buffer completion source
  ["hrsh7th/cmp-buffer"] = {
    after = "nvim-cmp",
    config = function() astronvim.add_user_cmp_source "buffer" end,
  },

  -- Path completion source
  ["hrsh7th/cmp-path"] = {
    after = "nvim-cmp",
    config = function() astronvim.add_user_cmp_source "path" end,
  },
  
  -- LSP completion source
  ['folke/trouble.nvim'] = { },

  -- LSP completion source
  ["hrsh7th/cmp-nvim-lsp"] = {
    after = "nvim-cmp",
    config = function() astronvim.add_user_cmp_source "nvim_lsp" end,
  },

  -- Built-in LSP
  ["neovim/nvim-lspconfig"] = { event = "VimEnter" },

  -- LSP manager
  ["williamboman/nvim-lsp-installer"] = {
    after = "nvim-lspconfig",
    config = function()
      require "configs.nvim-lsp-installer"
      require "configs.lsp"
    end,
  },

  -- LSP symbols
  ["stevearc/aerial.nvim"] = {
    module = "aerial",
    cmd = { "AerialToggle", "AerialOpen", "AerialInfo" },
    config = function() require "configs.aerial" end,
  },

  -- Formatting and linting
  ["jose-elias-alvarez/null-ls.nvim"] = {
    event = { "BufRead", "BufNewFile" },
    config = function() require "configs.null-ls" end,
  },

  -- Fuzzy finder
  ["nvim-telescope/telescope.nvim"] = {
    cmd = "Telescope",
    module = "telescope",
    config = function() require "configs.telescope" end,
  },

  -- Fuzzy finder syntax support
  [("nvim-telescope/telescope-%s-native.nvim"):format(vim.fn.has "win32" == 1 and "fzy" or "fzf")] = {
    after = "telescope.nvim",
    run = vim.fn.has "win32" ~= 1 and "make" or nil,
    config = function() require("telescope").load_extension(vim.fn.has "win32" == 1 and "fzy_native" or "fzf") end,
  },

  -- Git integration
  ["lewis6991/gitsigns.nvim"] = {
    event = "BufEnter",
    config = function() require "configs.gitsigns" end,
  },

  -- Start screen
  ["goolord/alpha-nvim"] = {
    cmd = "Alpha",
    module = "alpha",
    config = function() require "configs.alpha" end,
  },

  -- Color highlighting
  ["norcalli/nvim-colorizer.lua"] = {
    event = { "BufRead", "BufNewFile" },
    config = function() require "configs.colorizer" end,
  },

  -- Autopairs
  ["windwp/nvim-autopairs"] = {
    event = "InsertEnter",
    config = function() require "configs.autopairs" end,
  },

  -- Terminal
  ["akinsho/toggleterm.nvim"] = {
    cmd = "ToggleTerm",
    module = { "toggleterm", "toggleterm.terminal" },
    config = function() require "configs.toggleterm" end,
  },

  -- Commenting
  ["numToStr/Comment.nvim"] = {
    module = { "Comment", "Comment.api" },
    keys = { "<leader>c" },
    config = function() require "configs.Comment" end,
  },

  -- Indentation
  ["lukas-reineke/indent-blankline.nvim"] = {
    event = "BufRead",
    config = function() require "configs.indent-line" end,
  },

  -- Keymaps popup
  ["folke/which-key.nvim"] = {
    module = "which-key",
    config = function() require "configs.which-key" end,
  },

  -- Smooth scrolling
  ["declancm/cinnamon.nvim"] = {
    event = { "BufRead", "BufNewFile" },
    config = function() require "configs.cinnamon" end,
  },

  -- Get extra JSON schemas
  ["b0o/SchemaStore.nvim"] = { module = "schemastore" },

  -- Session manager
  ["Shatur/neovim-session-manager"] = {
    module = "session_manager",
    cmd = "SessionManager",
    event = "BufWritePost",
    config = function() require "configs.session_manager" end,
  },
}

if astronvim.updater.snapshot then
  for plugin, options in pairs(astro_plugins) do
    local pin = astronvim.updater.snapshot[plugin:match "/([^/]*)$"]
    options.commit = pin and pin.commit or options.commit
  end
end

local user_plugin_opts = astronvim.user_plugin_opts
local status_ok, packer = pcall(require, "packer")
if status_ok then
  packer.startup {
    function(use)
      for key, plugin in pairs(user_plugin_opts("plugins.init", astro_plugins)) do
        if type(key) == "string" and not plugin[1] then plugin[1] = key end
        use(plugin)
      end
    end,
    config = user_plugin_opts("plugins.packer", {
      compile_path = astronvim.default_compile_path,
      display = {
        open_fn = function() return require("packer.util").float { border = "rounded" } end,
      },
      profile = {
        enable = true,
        threshold = 0.0001,
      },
      git = {
        clone_timeout = 300,
        subcommands = {
          update = "pull --rebase",
        },
      },
      auto_clean = true,
      compile_on_sync = true,
    }),
  }
end
