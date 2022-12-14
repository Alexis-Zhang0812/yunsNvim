-- Set vim.fn as fn, vim.cmd as cmd
local fn = vim.fn

-- Auto install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Auto reloads neovim when save the plugins.lua
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use protected call avoid error first use
local staus_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer usr a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
    git = {
        clone_timeout = 300,
    },
}

-- Install plugins
return packer.startup(function(use)
-- Other
use 'wbthomason/packer.nvim'
use 'nvim-lua/plenary.nvim'
use 'windwp/nvim-autopairs'
use 'numToStr/Comment.nvim'
use 'kyazdani42/nvim-web-devicons'
use 'kyazdani42/nvim-tree.lua'
use 'lewis6991/impatient.nvim'

-- UI
use { 
    'navarasu/onedark.nvim',
    config = function()
        require('onedark').setup {
            style = 'dark',
            transparent = true,
        }
    end,
}
use 'nvim-lualine/lualine.nvim'

-- Cmp
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'saadparwaiz1/cmp_luasnip'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-nvim-lua'

-- Snippets
use 'L3MON4D3/LuaSnip'
use 'rafamadriz/friendly-snippets'

-- LSP
use 'neovim/nvim-lspconfig'
use 'williamboman/mason.nvim'
use 'williamboman/mason-lspconfig.nvim'
use 'jose-elias-alvarez/null-ls.nvim'
use 'RRethy/vim-illuminate'

-- Telescope
use 'nvim-telescope/telescope.nvim'

-- Treesitter
use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
}

-- Git
use 'lewis6991/gitsigns.nvim'

-- DAP
use 'mfussenegger/nvim-dap'
use 'rcarriga/nvim-dap-ui'
use 'ravenxrz/DAPInstall.nvim'

end)



