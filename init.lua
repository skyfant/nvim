require('set')
require('plugins')
require('nvimcmp')
require('lsp')


-- Setups

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})


-- keymaps

-- clear seach buffer with <Esc> for stopping highlighting search results
vim.keymap.set('n', '<Esc>', ':let @/=""<Esc>')

