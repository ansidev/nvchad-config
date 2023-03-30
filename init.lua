local autocmd = vim.api.nvim_create_autocmd

-- auto format file on saving
autocmd("BufWritePre", {
  pattern = "*",
  command = "lua vim.lsp.buf.format({ async = true })",
})

-- config for terraform filetypes
autocmd("BufRead,BufNewFile", {
  pattern = "*.",
  command = "set filetype=hcl",
 })
autocmd("BufRead,BufNewFile", {
  pattern = ".terraformrc,terraform.",
  command = "set filetype=hcl",
 })
autocmd("BufRead,BufNewFile", {
  pattern = "*.tf,*.tfvars",
  command = "set filetype=terraform",
 })
autocmd("BufRead,BufNewFile", {
  pattern = "*.tfstate,*.tfstate.backup",
  command = "set filetype=json",
 })

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
