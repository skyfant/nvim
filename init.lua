require('plugins')
require('set')
require('nvimcmp')
require('lsp')
require('autopairs')


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


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})




-- keymaps

-- clear seach buffer with <Esc> for stopping highlighting search results
vim.keymap.set('n', '<Esc>', ':let @/=""<Esc>')


-- keybinds for in-build terminal emulator        -- ctl + d  to exit terminal mode
vim.keymap.set('n', '<leader>t', ':vsplit term://bash<cr>')    -- vertical split
vim.keymap.set('n', '<leader>th', ':split term://bash<cr>')    -- horizontal split

-- keybinds for switching buffers
vim.keymap.set('n', '<leader>bn', ':bnext<CR>')
vim.keymap.set('n', '<leader>bp', ':bprev<CR>')
