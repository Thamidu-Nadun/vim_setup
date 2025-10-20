patterns = {
"*.js",
"*.ts",
"*.jsx",
"*.tsx",
"*.json",
"*.css",
"*.scss",
"*.md",
"*.lua",
"*.go",
"*.rs",
"*.java",
"*.py",
"*.html",
"*.yaml",
"*.yml",
"*.xml",
"*.c",
"*.cpp",
"*.h",
"*.hpp",
"*.sh",
"*.zsh",
"*.bash",
"*.vim",
"*.lua",
}
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = patterns,
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

