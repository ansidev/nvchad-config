local autocmd = vim.api.nvim_create_autocmd

-- auto format file on saving
autocmd("BufWritePre", {
  pattern = "*",
  command = "lua vim.lsp.buf.format({ async = true })",
})

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
