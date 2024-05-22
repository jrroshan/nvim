vim.cmd('set number')
vim.cmd('set relativenumber')
vim.cmd('set mouse=a')
vim.cmd('set tabstop=2')
vim.cmd('set shiftwidth=2')
vim.cmd('set expandtab')
vim.cmd('set softtabstop=2')

vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup("plugins")


vim.g.ui = {
  icons = {
    cmd = "⌘",
    config = "🛠",
    event = "📅",
    ft = "📂",
    init = "⚙",
    keys = "🗝",
    plugin = "🔌",
    runtime = "💻",
    require = "🌙",
    source = "📄",
    start = "🚀",
    task = "📌",
    lazy = "💤",
  }
}
-- {
--   ui = {
--     icons = {
--       cmd = "⌘",
--       config = "🛠",
--       event = "📅",
--       ft = "📂",
--       init = "⚙",
--       keys = "🗝",
--       plugin = "🔌",
--       runtime = "💻",
--       require = "🌙",
--       source = "📄",
--       start = "🚀",
--       task = "📌",
--       lazy = "💤 ",
--     },
--   },
-- }
