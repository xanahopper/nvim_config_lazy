-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Restore cursor after leaving Neovim in terminal.
local term_program = vim.env.TERM_PROGRAM
if term_program ~= nil and string.sub(term_program, 1, 5) == "iTerm" then
  vim.api.nvim_create_autocmd({ "VimLeave" }, {
    pattern = { "*" },
    callback = function()
      vim.opt.guicursor = "a:ver25-blinkon1"
    end,
  })
end
