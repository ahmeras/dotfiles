local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "fuzzy find files"})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "tele grep"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "telescope buffers"})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "tele help tags"})
vim.keymap.set('n', '<leader>fr', builtin.resume, {desc = "last search"})
vim.keymap.set('n', '<leader>fc', builtin.current_buffer_fuzzy_find, {desc = "cb find"})

vim.keymap.set('n', '<leader>fd', builtin.git_files, {desc = "tele git_files"})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({search = vim.fn.input("Grep > ")});

end)

