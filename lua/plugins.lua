-- packer.nvim bootstrap
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()


return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    --- Plugins ---

    -- colorschemes
    use 'EdenEast/nightfox.nvim'
    use 'morhetz/gruvbox'
    use 'sainnhe/everforest'

    -- cmp plugins
    use 'hrsh7th/nvim-cmp'  -- the completion plugin
    use 'hrsh7th/cmp-buffer'    -- buffer completions
    use 'hrsh7th/cmp-path'  -- path completions
    use 'hrsh7th/cmp-cmdline'   -- cmdline completions
    use 'saadparwaiz1/cmp_luasnip'  -- snippet completions
    use 'hrsh7th/cmp-nvim-lsp'  -- lsp completions

    -- snippets
    use 'L3MON4D3/LuaSnip'  -- snippet engine
    use 'rafamadriz/friendly-snippets'  -- a bunch of snippets to use

    --LSP
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'   -- LSP installer


    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} }
    }        
    
    use 'jiangmiao/auto-pairs'

    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optiona,},
    }

        
    if packer_bootstrap then
    require('packer').sync()
    end
        
end)
