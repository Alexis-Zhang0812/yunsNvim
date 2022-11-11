-- For an overview of options see https://neovim.io/doc/user/quickref.html#option-list

-- Set vim.opt as opt
local opt = vim.opt

-- Line number
opt.number = true -- line number.
opt.relativenumber = true -- relative line number.
opt.signcolumn = 'yes' -- always show sign column.

-- Encoding format
opt.fileencoding = "utf-8" -- file encoding for multibyte text.

-- Cursor
opt.scrolloff = 5 -- minimum nr. of lines above and below cursor.
opt.sidescrolloff = 5 -- min. nr. of columns to left and right of cursor.
opt.cursorline = true -- highlight the screen line of the cursor.
opt.cursorlineopt = "line" -- only highlight text line.

-- Indent
opt.tabstop = 4 -- number of spaces that <Tab> in file uses.
opt.softtabstop = 4 -- number of spaces that <Tab> uses while editing.
opt.shiftwidth = 4 -- number of spaces to use for autoindent step.
opt.expandtab = true -- use spaces when <Tab> is inserted.
opt.autoindent = true -- take indent for new line from previous line.
opt.smartindent = true -- smart autoindenting for C programs.
opt.list = true -- show <Tab> and <Eol>.
opt.listchars = "tab:> ,trail:·,nbsp:+" -- show trial as "·".

-- Search pattern
opt.ignorecase = true -- ignore case in search patterns.
opt.smartcase = true -- no ignore case when pattern has uppercase.

-- Split window
opt.splitbelow = true -- new window from split is below the current one.
opt.splitright = true -- new window is put right of the current one.

-- Other
opt.mouse = "a" -- enable the use of mouse clicks and scroll.
opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboaed.
opt.swapfile = false -- do not use a swapfile for the buffer.
opt.updatetime = 300 -- after 300ms flush swap file.
opt.laststatus = 3 -- always and only the last window has a status line.
opt.showcmd = false --do not show command in the last line of the screen.
opt.wrap = true -- long lines wrap to next line.
