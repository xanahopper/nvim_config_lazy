-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Restore cursor after leaving Neovim in terminal.
local term_program = vim.env.TERM_PROGRAM
if term_program ~= nil then
  vim.api.nvim_create_autocmd({ "VimLeave" }, {
    pattern = { "*" },
    callback = function()
      vim.opt.guicursor = "a:ver25-blinkon1"
    end,
  })
  -- vim.api.nvim_create_autocmd({ "ExitPre" }, {
  --   group = vim.api.nvim_create_augroup("Exit", { clear = true }),
  --   command = "set guicursor=a:ver90",
  -- })
end
