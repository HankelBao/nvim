function! GetNVimVersion()
    redir => s
    silent! version
    redir END
    return matchstr(s, 'NVIM v\zs[^\n]*')
endfunction

let g:vimspector_enable_mappings='HUMAN'

call plug#begin('~/.config/vim-plugged')
	Plug 'justinmk/vim-sneak'
	Plug 'chriskempson/base16-vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'liuchengxu/vim-which-key'
	Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-rooter'
    Plug 'liuchengxu/vista.vim'

	" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': 'markdown' }

    Plug 'neovim/nvim-lsp'
    Plug 'puremourning/vimspector'
    Plug 'nvim-lua/completion-nvim'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
call plug#end()

let g:which_key_use_floating_win = 1
let g:rooter_change_directory_for_non_project_files = 'current'

if has('nvim') && !exists('g:fzf_layout')
    autocmd! FileType fzf
    autocmd  FileType fzf set laststatus=0 noshowmode noruler
        \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
endif
autocmd FileType fzf tnoremap <buffer> <Esc> <Esc>

lua <<EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,                    -- false will disable the whole extension
    },
    incremental_selection = {
        enable = true,
        keymaps = {                       -- mappings for incremental selection (visual mappings)
          init_selection = '<leader>s<space>',         -- maps in normal mode to init the node/scope selection
          node_incremental = "<leader>s+",       -- increment to the upper named parent
          scope_incremental = "<leader>s-",      -- increment to the upper scope (as defined in locals.scm)
          node_decremental = "<leader>ss",       -- decrement to the previous node
        }
    },
    refactor = {
      highlight_defintions = {
        enable = true
      },
      smart_rename = {
        enable = true,
        smart_rename = "grr"              -- mapping to rename reference under cursor
      },
      navigation = {
        enable = true,
        goto_definition = "gnd",          -- mapping to go to definition of symbol under cursor
        list_definitions = "gnD"          -- mapping to list all definitions in current file
      }
    },
    ensure_installed = 'all' -- one of 'all', 'language', or a list of languages
}
require'nvim_lsp'.clangd.setup{}
require'nvim_lsp'.pyls.setup{}
require'nvim_lsp'.vimls.setup{}
EOF

autocmd BufEnter * lua require'completion'.on_attach()
