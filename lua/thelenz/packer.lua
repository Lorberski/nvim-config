-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use( {
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end
	})

	use ( 'theprimeagen/harpoon')
	use ( 'mbbill/undotree')
	use ( 'tpope/vim-fugitive')
	use {
		"williamboman/mason.nvim",
		run = ":MasonUpdate" 
	}

	use {
		"williamboman/mason-lspconfig.nvim",
		requires = { "neovim/nvim-lspconfig" } 	
	}
	use { 'neovim/nvim-lspconfig' }




	use 'hrsh7th/nvim-cmp'          -- Autocomplete engine
	use 'hrsh7th/cmp-nvim-lsp'      -- LSP Quelle für nvim-cmp
	use 'L3MON4D3/LuaSnip'          -- Snippet Engine
	use 'saadparwaiz1/cmp_luasnip'  -- Snippet Completion Quelle
	use 'hrsh7th/cmp-buffer'        -- Buffer completion source
	use 'hrsh7th/cmp-path'          -- Pfad Completion Quelle
end)
