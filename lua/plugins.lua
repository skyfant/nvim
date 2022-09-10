
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


end)
