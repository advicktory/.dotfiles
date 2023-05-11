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

local packer_bootstrap = ensure_packer()

vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
    augroup end
]]) -- Works! Just use :w and not :wq

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim") -- Needed to use other plugins
	use("bluz71/vim-nightfly-guicolors")
	use("christoomey/vim-tmux-navigator") -- Use CTRL + "hjkl" to move between split screens
	use("szw/vim-maximizer") -- Maximize a split screen: <leader>sw
	use("tpope/vim-surround") -- Surround things with another thing: ys *motion* *character*
	use("vim-scripts/ReplaceWithRegister") -- Replace text with copied text: Copy word 1 "yw", Move word 2, gr*motion* :test1 test2
	use("numToStr/Comment.nvim") -- Comment out line easier: Comment Line "gcc", uncomment line "gcc"; Comment out multiple line: "gc *number of lines* *j/k*"
	use("nvim-tree/nvim-tree.lua") -- File Explorer
	use("kyazdani42/nvim-web-devicons") -- Different Icons for NvimTree

	use("nvim-lualine/lualine.nvim") -- status line

	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for the below
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths

	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	-- managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- Configure LSP Servers
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		-- requires = {
		--     { "nvim-tree/nvim-web-devicons" },
		--     { "nvim-treesitter/nvim-treesitter" },
		-- },
	}) -- enhanced lsp uis
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- Formatting & Linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- Syntax Highlightingi
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- autoclosing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- git integration
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side
	if packer_bootstrap then
		require("packer").sync()
	end
end)
