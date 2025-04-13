vim.opt.guicursor = {
    "n-v-c:block", -- block cursor in normal/visual/cmd
    "i-ci:ver25",  -- vertical bar in insert
    "r-cr:hor20",  -- horizontal bar in replace
    "o:hor50",     -- big horizontal in operator
    "a:blinkon0",  -- no blinking for all
    "sm:block-blinkwait175-blinkoff150-blinkon175"
}
vim.cmd [[
  highlight Cursor guifg=#1e1e1e guibg=#ffffff   " white cursor
  highlight lCursor guifg=#ffffff guibg=#1e1e1e " grey-ish block
  highlight CursorInsert guifg=#1e1e1e guibg=#dddddd
  highlight CursorReplace guifg=#1e1e1e guibg=#bbbbbb
]]

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.o.termguicolors = true
