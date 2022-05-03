local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        'git', 'clone', '--depth', '1',
        'https://github.com/wbthomason/packer.nvim', install_path
    })
end

require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'yonlu/omni.vim'
	use "EdenEast/nightfox.nvim"
	use "rafamadriz/neon"
    use 'shaeinst/roshnivim-cs'
    use 'luisiacc/gruvbox-baby'
    use 'NTBBloodbath/doom-one.nvim'
    use {
        'goolord/alpha-nvim',
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function() require('config.alpha') end
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function() require'nvim-tree'.setup {} end
    }
    use {'akinsho/bufferline.nvim', tag = "v1.*" , requires = 'kyazdani42/nvim-web-devicons'}
    use 'windwp/nvim-autopairs'
    use 
	{
		'neovim/nvim-lspconfig',
		require"lspconfig".clangd.setup{},
		require"lspconfig".tsserver.setup{},
	}
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use {'hrsh7th/nvim-cmp', commit = "2aa7eee28b4d49e999c694ca733a393da5808dd6"}
    use 'onsails/lspkind-nvim'
    use 'nvim-lua/plenary.nvim'
    use {'nvim-treesitter/nvim-treesitter', commit = "bc25a6a5c4fd659bbf78ba0a2442ecf14eb00398"}
    use {'ojroques/nvim-buildme'}
    use {
        'nvim-telescope/telescope.nvim',
		commit = "d88094fbfd84b297178252230f6faf0e7d2f7650",
        requires = {{'nvim-lua/plenary.nvim'}}
    }
end)
