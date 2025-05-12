require('telescope').setup {
    pickers = {
        buffers = {
            mappings = {
                i = {
                    ["<c-d>"] = require("telescope.actions").delete_buffer,
                },
                n = {
                    ["dd"] = require("telescope.actions").delete_buffer,
                }
            }
        }
    }
}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.git_files, {})
vim.keymap.set('n', '<C-p>', function()
    builtin.buffers({ sort_mru = true, ignore_current_buffer = true })
end)
-- vim.keymap.set('n', '<leader>ps', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)
vim.keymap.set('n', '<leader>ps', builtin.live_grep)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>td', require('telescope.builtin').diagnostics, { desc = 'Telescope Diagnostics' })
