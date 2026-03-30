local opt = vim.opt

-- encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- line numbers
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"

-- tab & indentation
opt.tabstop = 4
opt.shiftwidth = 0
opt.smarttab = true
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.tabclose = "uselast"
opt.copyindent = true
opt.preserveindent = true
opt.shiftround = true


-- line wrapping
opt.breakindent = true
opt.linebreak = true
opt.wrap = false

-- search settings
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.infercase = true

-- appearance
opt.title = true
opt.scrolloff = 10
opt.showcmd = true
opt.cmdheight = 0
opt.laststatus = 3
opt.showtabline = 2
opt.showmode = false
opt.termguicolors = true
opt.background = 'dark'
opt.fillchars = { eob = " " }

-- backspace
opt.backspace = { "indent", "eol", "start", "nostop" }

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.backup = false
opt.wildignore:append { '*/node_modules/*' }
opt.iskeyword:append('-')
opt.formatoptions:append { 'r' }
opt.completeopt = { "menu", "menuone", "noselect" }
opt.pumheight = 10

opt.shortmess = vim.tbl_deep_extend("force", vim.opt.shortmess:get(), {
  s = true, I = true, c = true, C = true
})

opt.splitbelow = true
opt.splitright = true

opt.jumpoptions = {}

opt.diffopt = vim.list_extend(vim.opt.diffopt:get(), {
  "algorithm:histogram",
  "linematch:60"
})

opt.clipboard = "unnamedplus"
opt.mouse = "a"
opt.termguicolors = true

opt.confirm = true
opt.undofile = true
opt.writebackup = false

opt.timeoutlen = 500
opt.updatetime = 300

opt.virtualedit = "block"
