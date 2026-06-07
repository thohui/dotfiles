-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local opts = { noremap = true, silent = true, buffer = event.buf }
    local map = vim.keymap.set

    map("n", "gD", vim.lsp.buf.declaration, opts)
    map("n", "gd", vim.lsp.buf.definition, opts)
    map("n", "gi", vim.lsp.buf.implementation, opts)
    map("n", "gh", vim.lsp.buf.hover, opts)
    map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    map("n", "ra", vim.lsp.buf.rename, opts)
    map("n", "gr", vim.lsp.buf.references, opts)
    map("n", "<C-j>", function()
      vim.diagnostic.jump({ count = 1, float = true })
    end, opts)
    map("i", "<C-k>", vim.lsp.buf.signature_help, opts)
    map("n", "<leader>fm", vim.lsp.buf.format, opts)
  end,
})
