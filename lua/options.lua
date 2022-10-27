-- For an overview of options see https://neovim.io/doc/user/quickref.html#option-list

-- Line number
vim.opt.number = true -- line number.
vim.opt.relativenumber = true -- relative line number.
vim.opt.signcolumn = 'yes' -- always show sign column.

-- Encoding format
vim.opt.fileencoding = "utf-8" -- file encoding for multibyte text.

-- Cursor
vim.opt.scrolloff = 5 -- minimum nr. of lines above and below cursor.
vim.opt.sidescrolloff = 5 -- min. nr. of columns to left and right of cursor.
vim.opt.cursorline = true -- highlight the screen line of the cursor.
vim.opt.cursorlineopt = "line" -- only highlight text line.

-- Indent
vim.opt.tabstop = 4 -- number of spaces that <Tab> in file uses.
vim.opt.softtabstop = 4 -- number of spaces that <Tab> uses while editing.
vim.opt.shiftwidth = 4 -- number of spaces to use for autoindent step.
vim.opt.expandtab = true -- use spaces when <Tab> is inserted.
vim.opt.autoindent = true -- take indent for new line from previous line.
vim.opt.smartindent = true -- smart autoindenting for C programs.
vim.opt.list = true -- show <Tab> and <Eol>.
vim.opt.listchars = "tab:> ,trail:·,nbsp:+" -- show trial as "·".

-- Search pattern
vim.opt.ignorecase = true -- ignore case in search patterns.
vim.opt.smartcase = true -- no ignore case when pattern has uppercase.

-- Split window
vim.opt.splitbelow = true -- new window from split is below the current one.
vim.opt.splitright = true -- new window is put right of the current one.

-- Other
vim.opt.mouse = "a" -- enable the use of mouse clicks and scroll.
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboaed.
vim.opt.swapfile = false -- do not use a swapfile for the buffer.
vim.opt.updatetime = 300 -- after 300ms flush swap file.
vim.opt.laststatus = 3 -- always and only the last window has a status line.
vim.opt.showcmd = false --do not show command in the last line of the screen.
vim.opt.wrap = false -- long lines not wrap.
