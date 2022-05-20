--[[ vars.lua ]]

local g = vim.g
local o = vim.o
local wo = vim.wo

g.t_co = 256
g.background = "dark"

--Set highlight on search
o.hlsearch = false

--Make line numbers default
wo.number = true
wo.relativenumber = true

--Enable mouse mode
o.mouse = 'a'

--Enable break indent
o.breakindent = true

--Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

--Decrease update time
o.updatetime = 250
wo.signcolumn = 'yes'

--Set colorscheme
o.termguicolors = true
vim.cmd [[colorscheme zenburn]]

-- Set completeopt to have a better completion experience
o.completeopt = 'menuone,noselect'



