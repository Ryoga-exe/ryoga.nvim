local opt = vim.opt

-- Encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- UI / Appearance
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"

opt.title = true
opt.showcmd = true
opt.showmode = false
opt.cmdheight = 0
opt.laststatus = 3
opt.showtabline = 2

opt.termguicolors = true
opt.fillchars = { eob = " " }

opt.scrolloff = 10

-- Tab / Indentation
opt.tabstop = 4
opt.shiftwidth = 0
opt.smarttab = true
opt.expandtab = true

opt.autoindent = true
opt.smartindent = true
opt.copyindent = true
opt.preserveindent = true
opt.shiftround = true

opt.tabclose = "uselast"

-- Wrapping
opt.wrap = false
opt.linebreak = true
opt.breakindent = true
vim.opt.showbreak = '↪'

-- Search
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.infercase = true

-- Editing / Behavior
opt.backspace = { "indent", "eol", "start", "nostop" }
opt.clipboard = "unnamedplus"
opt.mouse = "a"
opt.confirm = true
opt.virtualedit = "block"

opt.backup = false
opt.writebackup = false
opt.undofile = true
opt.swapfile = false

opt.timeoutlen = 500
opt.updatetime = 300

-- Window
opt.splitright = true
opt.splitbelow = true
opt.jumpoptions = {}

-- Completion / Popup Menu
opt.completeopt = { "menu", "menuone", "noselect" }
opt.pumheight = 10

-- Other
opt.wildignore:append({ "*/node_modules/*" })
opt.iskeyword:append("-")
opt.formatoptions:append("r")
opt.shortmess:append("sIcC")
opt.diffopt:append({ "algorithm:histogram", "linematch:60" })
