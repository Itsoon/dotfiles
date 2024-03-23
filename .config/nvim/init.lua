require "core"


local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"

-- VIM Plug

local vim = vim
local Plug = vim.fn['plug#']

vim.g.python3_host_prog = '/usr/bin/python3'

vim.call('plug#begin')

-- Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
-- Plug('junegunn/vim-easy-align')

-- Any valid git URL is allowed
-- Plug('https://github.com/junegunn/vim-github-dashboard.git')

-- Multiple Plug commands can be written in a single line using ; separators
-- Plug('SirVer/ultisnips'); Plug('honza/vim-snippets')

-- On-demand loading
-- Plug('preservim/nerdtree', { ['on'] = 'NERDTreeToggle' })
-- Plug('tpope/vim-fireplace', { ['for'] = 'clojure' })

-- Using a non-default branch
-- Plug('rdnetto/YCM-Generator', { ['branch'] = 'stable' })

-- Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
-- Plug('fatih/vim-go', { ['tag'] = '*' })

-- Plugin options
-- Plug('nsf/gocode', { ['tag'] = 'v.20150303', ['rtp'] = 'vim' })

-- Plugin outside ~/.vim/plugged with post-update hook
-- Plug('junegunn/fzf', { ['dir'] = '~/.fzf', ['do'] = './install --all' })

-- Unmanaged plugin (manually installed and updated)

-- Discord Rich Presence 
Plug('andweeb/presence.nvim')


vim.call('plug#end')
