require('lohanyrvine.remap')
require('lohanyrvine.set')
require('lohanyrvine.packer')

local augroup = vim.api.nvim_create_augroup
local lohan_yrvine_group = augroup('LohanYrvine', {})
local autocmd = vim.api.nvim_create_autocmd
autocmd({"BufWritePre"}, {
    group = lohan_yrvine_group,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})
