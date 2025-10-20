-- Save in insert mode with Ctrl+S
vim.keymap.set("i", "<C-s>", "<Esc>:w!<CR>a", { noremap = true, silent = true })

-- Save in normal mode with <leader>w (leader is usually space)
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })

-- Comment when hit <C-/> in insert mode
vim.api.nvim_set_keymap("i", "<C-c>", "<Esc><Plug>(comment_toggle_linewise_current)a", { noremap = false, silent = true })

