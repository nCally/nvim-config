-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

-- add list of plugins to install
return packer.startup(function(use)
	-- packer can manage itself
	use("wbthomason/packer.nvim")

	use("nvim-lua/plenary.nvim")

	-- center buffer
	use("smithbm2316/centerpad.nvim");

	-- preferred colorscheme
	use("morhetz/gruvbox")
	use("sainnhe/everforest")
	use("folke/tokyonight.nvim")
	use("NLKNguyen/papercolor-theme")
	use("savq/melange-nvim")

	-- css coloring
	use("norcalli/nvim-colorizer.lua")

	use("christoomey/vim-tmux-navigator")
	use("szw/vim-maximizer")

	use("numToStr/Comment.nvim")

	use("nvim-tree/nvim-tree.lua")

	use("dart-lang/dart-vim-plugin")
	use("thosakwe/vim-flutter")
	use("natebosch/vim-lsc")
	use("natebosch/vim-lsc-dart")

	use("kyazdani42/nvim-web-devicons")

	use("nvim-lualine/lualine.nvim")

	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")
	use({"L3MON4D3/LuaSnip", dependencies = { "saadparwaiz1/cmp_luasnip", "rafamadriz/friendly-snippets" }})

	-- configuring lsp servers
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	use("hrsh7th/cmp-nvim-lsp")
	-- use({ "glepnir/lspsaga.nvim", branch = "main" })
	use({ "nvimdev/lspsaga.nvim" })
	use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind.nvim")

	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	use("lukas-reineke/indent-blankline.nvim")

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- git integration
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	-- HTML live server
	use("wolandark/vim-live-server")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
