local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'tomasr/molokai'	
	use 
	{
		'goolord/alpha-nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
		config = function ()
			require('config.alpha')
		end
	}
	use 'folke/tokyonight.nvim'
	use 
	{
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 
	{
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', 
		},
		config = function() require'nvim-tree'.setup {} end
	}
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
	use 'windwp/nvim-autopairs'
	use
	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}
	use 'xiyaowong/nvim-transparent'
	use
	{
		'neovim/nvim-lspconfig',
		require 'lspconfig'.clangd.setup
		{
			capabilities = cmp,
			cmd = {"clangd", "--all-scopes-completion=false"}
		}
	}
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/nvim-cmp'
	use 'onsails/lspkind-nvim'
	use 'nvim-lua/plenary.nvim'
	use 'mfussenegger/nvim-dap'
	use 'Shatur/neovim-cmake'
	use 
	{
		'nvim-treesitter/nvim-treesitter',
	}
	use {'ojroques/nvim-buildme'}
end)
