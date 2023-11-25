require("telescope").setup {
    defaults = {
        file_ignore_patterns = {
            -- directories
            ".git/",
            ".idea/",
            ".vscode/",
            "target/",
            "obj/",
            "bin/",

            -- files
            ".lock",
        }
    },
    pickers = {
        find_files = {
            hidden = true
        }
    }
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pfj', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
