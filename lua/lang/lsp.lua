-- Lsp Status
local lsp_status = require('lsp-status')
lsp_status.register_progress()

-- Neovim LSP
local on_attach_vim = function(client)
  require'completion'.on_attach(client)
  require'lsp-status'.on_attach(client)
end

local nvim_lsp = require'lspconfig'

nvim_lsp.clangd.setup{
    on_attach=on_attach_vim,
    capabilities = lsp_status.capabilities
}

nvim_lsp.pyls.setup{
    on_attach=on_attach_vim,
    capabilities = lsp_status.capabilities
}

nvim_lsp.gopls.setup {
    on_attach = on_attach_vim,
    capabilities = lsp_status.capabilities
}

-- nvim_lsp.pyls_ms.setup{on_attach=on_attach_vim}

-- nvim_lsp.vimls.setup{on_attach=on_attach_vim}
-- nvim_lsp.sumneko_lua.setup{
--     cmd = {"/home/hankel/.cache/nvim/nvim_lsp/sumneko_lua/lua-language-server/bin/Linux/lua-language-server"},
--     on_attach=on_attach_vim,
--     capabilities = lsp_status.capabilities
-- }
require('nlua.lsp.nvim').setup(require('lspconfig'), {
    on_attach = on_attach_vim,
    globals = {
        "Color", "c", "Group", "g", "s", "use"
    }
})

nvim_lsp.rls.setup{
    on_attach=on_attach_vim
}
nvim_lsp.texlab.setup{
    on_attach=on_attach_vim
}

vim.g.completion_enable_snippet = 'vim-vsnip'

vim.cmd[[
imap <expr> <C-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-j>'
smap <expr> <C-j>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<C-j>'
imap <expr> <C-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<C-k>'
smap <expr> <C-k> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<C-k>'
]]

vim.g.completion_chain_complete_list = {
    default = {
        default = { {complete_items={'lsp', 'snippet', 'ts'}}}
    }
}

vim.cmd[[
autocmd BufEnter * lua require'completion'.on_attach()
]]

vim.cmd[[
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set completeopt=menuone,noinsert,noselect
]]
