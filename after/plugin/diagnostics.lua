require('trouble').setup({})

vim.keymap.set("n", "<leader>tj", "<cmd>TroubleToggle<cr>",
    { silent = true, noremap = true }
)
