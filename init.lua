-- NEOVIM CONFIG

-- CHEATSHEET:
-- Telescope (find files):
--  Find files: Ctrl + p
--  Find text: space + fg
-- Neotree:
--  Add file/dir: a
--  Switch Window: Ctrl + w + <hjkl>
-- LSP:
--  Show Docs: K
--  Definition: space + gd
--  Get References: space + gr
--  Code Actions: space + ca
--  Auto Complete: (ctrl + x) + (ctrl + o)
-- NONE-LS:
--  Format Lua: space + gf
-- NVIM-CMP:
--  scroll docs: ctrl + b or ctrl + f
--  auto-complete: ctrl + space
--  abort: ctrl + e
--  confirm: enter

-- LAZY.NVIM SETUP --
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")
