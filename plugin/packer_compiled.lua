-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/aabjhbao-ext/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/aabjhbao-ext/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/aabjhbao-ext/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/aabjhbao-ext/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/aabjhbao-ext/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FTerm.nvim"] = {
    config = { "\27LJ\2\nä\1\0\0\6\0\f\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\n\0'\3\a\0'\4\b\0005\5\v\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\6n\1\0\2\vsilent\2\fnoremap\2+<cmd>lua require('FTerm').toggle()<cr>\n<C-T>\6t\20nvim_set_keymap\bapi\bvim\nsetup\nFTerm\frequire\0" },
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/FTerm.nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/editorconfig-vim"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/git-blame.nvim"
  },
  ["lightspeed.nvim"] = {
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/lightspeed.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14on_attach\18lsp_signature\frequire\0" },
    load_after = {
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    config = { "require'config.lspkind'" },
    load_after = {
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/opt/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\nå\3\0\0\6\0\20\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\18\0005\4\4\0005\5\3\0=\5\5\0045\5\6\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\0045\5\14\0=\5\15\0045\5\16\0=\5\17\4=\4\19\3B\1\2\1K\0\1\0\r<space>m\1\0\0\6h\1\3\0\0 <cmd>Lspsaga lsp_finder<cr>\15Lsp Finder\6e\1\3\0\0+<cmd>Lspsaga show_line_diagnostics<cr>\21Line Diagnostics\6d\1\3\0\0(<cmd>Lspsaga preview_definition<cr>\23Preview Definition\6r\1\3\0\0\28<cmd>Lspsaga rename<cr>\vRename\6k\1\3\0\0\31<cmd>Lspsaga hover_doc<cr>\14Hover Doc\6a\1\3\0\0!<cmd>Lspsaga code_action<cr>\fActions\6s\1\0\0\1\3\0\0$<cmd>Lspsaga signature_help<cr>\19Signature Help\rregister\14which-key\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "require('config.lualine')" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/opt/lualine.nvim"
  },
  ["mkdir.nvim"] = {
    config = { "require('mkdir')" },
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/mkdir.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/neoscroll.nvim"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    after = { "lsp_signature.nvim", "lspkind-nvim" },
    after_files = { "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    config = { "require'config.completion'" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    after = { "symbols-outline.nvim", "lspsaga.nvim", "trouble.nvim" },
    loaded = true,
    only_config = true
  },
  ["nvim-peekup"] = {
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/nvim-peekup"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nÏ\1\0\0\5\0\n\0\0176\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\1\6\0005\3\b\0005\4\a\0=\4\t\3B\1\2\1K\0\1\0\14<space>td\1\0\0\1\3\0\0\28<cmd>NvimTreeToggle<cr>\16File Drawer\rregister\14which-key\frequire!nvim_tree_width_allow_resize\21nvim_tree_follow\6g\bvim\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\ni\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fonedark\frequire\0" },
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["specs.nvim"] = {
    config = { "\27LJ\2\n \2\0\0\a\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\0\0'\6\1\0B\4\2\0029\4\5\4=\4\6\0036\4\0\0'\6\1\0B\4\2\0029\4\a\4=\4\b\3=\3\t\0024\3\0\0=\3\n\0025\3\v\0=\3\f\2B\0\2\1K\0\1\0\20ignore_buftypes\1\0\1\vnofile\2\21ignore_filetypes\npopup\fresizer\19shrink_resizer\nfader\17linear_fader\1\0\5\nwinhl\nPMenu\nwidth\3\n\nblend\3\n\vinc_ms\3\n\rdelay_ms\3\0\1\0\2\rmin_jump\3\n\15show_jumps\2\nsetup\nspecs\frequire\0" },
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/specs.nvim"
  },
  ["startuptime.vim"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/opt/startuptime.vim"
  },
  ["symbols-outline.nvim"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim"
  },
  ["telescope-project.nvim"] = {
    config = { "\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\fproject\19load_extension\14telescope\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/opt/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    after = { "telescope-project.nvim" },
    config = { "require('config.telescope')" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n\\\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\15auto_close\2\14auto_open\2\vheight\3\5\nsetup\ftrouble\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/opt/trouble.nvim"
  },
  ["vim-code-dark"] = {
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/vim-code-dark"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-sayonara"] = {
    commands = { "Sayonara" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/aabjhbao-ext/.local/share/nvim/site/pack/packer/opt/vim-sayonara"
  },
  ["which-key.nvim"] = {
    after = { "lspsaga.nvim", "telescope.nvim", "nvim-tree.lua", "lualine.nvim" },
    loaded = true,
    only_config = true
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: specs.nvim
time([[Config for specs.nvim]], true)
try_loadstring("\27LJ\2\n \2\0\0\a\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\0\0'\6\1\0B\4\2\0029\4\5\4=\4\6\0036\4\0\0'\6\1\0B\4\2\0029\4\a\4=\4\b\3=\3\t\0024\3\0\0=\3\n\0025\3\v\0=\3\f\2B\0\2\1K\0\1\0\20ignore_buftypes\1\0\1\vnofile\2\21ignore_filetypes\npopup\fresizer\19shrink_resizer\nfader\17linear_fader\1\0\5\nwinhl\nPMenu\nwidth\3\n\nblend\3\n\vinc_ms\3\n\rdelay_ms\3\0\1\0\2\rmin_jump\3\n\15show_jumps\2\nsetup\nspecs\frequire\0", "config", "specs.nvim")
time([[Config for specs.nvim]], false)
-- Config for: FTerm.nvim
time([[Config for FTerm.nvim]], true)
try_loadstring("\27LJ\2\nä\1\0\0\6\0\f\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\n\0'\3\a\0'\4\b\0005\5\v\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\6n\1\0\2\vsilent\2\fnoremap\2+<cmd>lua require('FTerm').toggle()<cr>\n<C-T>\6t\20nvim_set_keymap\bapi\bvim\nsetup\nFTerm\frequire\0", "config", "FTerm.nvim")
time([[Config for FTerm.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
require('config.which-key')
time([[Config for which-key.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\ni\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fonedark\frequire\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: mkdir.nvim
time([[Config for mkdir.nvim]], true)
require('mkdir')
time([[Config for mkdir.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nð\1\0\0\3\0\t\0+6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\5\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\6\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\a\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\b\0009\0\3\0004\2\0\0B\0\2\1K\0\1\0\nvuels\thtml\brls\vclangd\rtsserver\nsetup\npylsp\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd symbols-outline.nvim ]]
vim.cmd [[ packadd trouble.nvim ]]

-- Config for: trouble.nvim
try_loadstring("\27LJ\2\n\\\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\15auto_close\2\14auto_open\2\vheight\3\5\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")

vim.cmd [[ packadd lspsaga.nvim ]]

-- Config for: lspsaga.nvim
try_loadstring("\27LJ\2\nå\3\0\0\6\0\20\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\18\0005\4\4\0005\5\3\0=\5\5\0045\5\6\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\0045\5\14\0=\5\15\0045\5\16\0=\5\17\4=\4\19\3B\1\2\1K\0\1\0\r<space>m\1\0\0\6h\1\3\0\0 <cmd>Lspsaga lsp_finder<cr>\15Lsp Finder\6e\1\3\0\0+<cmd>Lspsaga show_line_diagnostics<cr>\21Line Diagnostics\6d\1\3\0\0(<cmd>Lspsaga preview_definition<cr>\23Preview Definition\6r\1\3\0\0\28<cmd>Lspsaga rename<cr>\vRename\6k\1\3\0\0\31<cmd>Lspsaga hover_doc<cr>\14Hover Doc\6a\1\3\0\0!<cmd>Lspsaga code_action<cr>\fActions\6s\1\0\0\1\3\0\0$<cmd>Lspsaga signature_help<cr>\19Signature Help\rregister\14which-key\frequire\0", "config", "lspsaga.nvim")

vim.cmd [[ packadd nvim-tree.lua ]]

-- Config for: nvim-tree.lua
try_loadstring("\27LJ\2\nÏ\1\0\0\5\0\n\0\0176\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\1\6\0005\3\b\0005\4\a\0=\4\t\3B\1\2\1K\0\1\0\14<space>td\1\0\0\1\3\0\0\28<cmd>NvimTreeToggle<cr>\16File Drawer\rregister\14which-key\frequire!nvim_tree_width_allow_resize\21nvim_tree_follow\6g\bvim\0", "config", "nvim-tree.lua")

vim.cmd [[ packadd lualine.nvim ]]

-- Config for: lualine.nvim
require('config.lualine')

vim.cmd [[ packadd telescope.nvim ]]

-- Config for: telescope.nvim
require('config.telescope')

vim.cmd [[ packadd telescope-project.nvim ]]

-- Config for: telescope-project.nvim
try_loadstring("\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\fproject\19load_extension\14telescope\frequire\0", "config", "telescope-project.nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'startuptime.vim'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Sayonara lua require("packer.load")({'vim-sayonara'}, { cmd = "Sayonara", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-compe'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
