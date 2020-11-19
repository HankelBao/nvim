-- Neovim LSP
local on_attach_vim = function(client)
  require'completion'.on_attach(client)
  require'diagnostic'.on_attach(client)
end

local nvim_lsp = require'lspconfig'
nvim_lsp.clangd.setup{on_attach=on_attach_vim}

nvim_lsp.pyls.setup{on_attach=on_attach_vim}

-- nvim_lsp.vimls.setup{on_attach=on_attach_vim}
nvim_lsp.sumneko_lua.setup{
    cmd = {"/home/hankel/.cache/nvim/nvim_lsp/sumneko_lua/lua-language-server/bin/Linux/lua-language-server"},
    on_attach=on_attach_vim
}
nvim_lsp.rls.setup{
    on_attach=on_attach_vim
}
nvim_lsp.texlab.setup{
    on_attach=on_attach_vim
}
