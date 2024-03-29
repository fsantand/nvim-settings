return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "hrsh7th/cmp-buffer" }, -- Optional
			{ "hrsh7th/cmp-path" }, -- Optional
			{ "saadparwaiz1/cmp_luasnip" }, -- Optional
			{ "hrsh7th/cmp-nvim-lua" }, -- Optional

			-- Snippets
			{ "L3MON4D3/LuaSnip" }, -- Required
			{ "rafamadriz/friendly-snippets" }, -- Optional
			{ "hrsh7th/cmp-nvim-lsp-signature-help" },
		},
	})
	-- use({
	-- 	"nvim-tree/nvim-tree.lua",
	-- 	requires = {
	-- 		"kyazdani42/nvim-web-devicons", -- optional, for file icons
	-- 	},
	-- })
	use({
		"folke/tokyonight.nvim",
		config = function()
			vim.cmd("colorscheme tokyonight")
		end,
	})
	use({
		"christoomey/vim-tmux-navigator",
	})
	use({
		"goolord/alpha-nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("alpha").setup(require("alpha.themes.startify").config)
		end,
	})
	use("tpope/vim-surround")
	use("vim-scripts/ReplaceWithRegister")
	use("numToStr/Comment.nvim")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use("feline-nvim/feline.nvim")
	use({
		"lewis6991/gitsigns.nvim",
	})
	use({ "ThePrimeagen/vim-be-good" })
	use({ "romgrk/barbar.nvim", requires = "nvim-tree/nvim-web-devicons" })
	use({ "voldikss/vim-floaterm" })
	use({
		"utilyre/barbecue.nvim",
		tag = "*",
		requires = {
			"SmiteshP/nvim-navic",
		},
		config = function()
			require("barbecue").setup({ theme="tokyonight" })
		end,
	})
	use("jose-elias-alvarez/null-ls.nvim")
	use("tummetott/reticle.nvim")
	use("onsails/lspkind.nvim")
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use({ "ray-x/lsp_signature.nvim" })
	use({ "ibhagwan/fzf-lua" })
	use({
		"natecraddock/workspaces.nvim",
		config = function()
			require("workspaces").setup()
		end,
	})
	use({ "interdependence/tree-sitter-htmldjango" })
    use {
        'pwntester/octo.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim',
            'kyazdani42/nvim-web-devicons',
        },
        config = function()
            require "octo".setup({timeout=10000})
        end
    }
    use "nvim-tree/nvim-tree.lua"
    use {
        'simrat39/symbols-outline.nvim',
    }
end)
