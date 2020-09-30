function! MinpacInit() abort
    packadd minpac
    call minpac#init()
    call minpac#add('xuhdev/vim-latex-live-preview', {'type': 'opt'})
    call minpac#add('iamcco/markdown-preview.nvim', { 'type': 'opt', 'do': {->mkdp#util#install()}})

    call minpac#add('nvim-treesitter/nvim-treesitter')
    call minpac#add('neovim/nvim-lsp')
    call minpac#add('nvim-lua/completion-nvim')
    call minpac#add('nvim-lua/diagnostic-nvim')

    call minpac#add('editorconfig/editorconfig-vim')
    call minpac#add('airblade/vim-rooter')
    call minpac#add('rakr/vim-one')
    call minpac#add('dracula/vim')
    call minpac#add('ryanoasis/vim-devicons')
    call minpac#add('psliwka/vim-smoothie')
    call minpac#add('liuchengxu/vista.vim')
    call minpac#add('puremourning/vimspector')
    call minpac#add('airblade/vim-gitgutter')
    call minpac#add('justinmk/vim-sneak')
    call minpac#add('machakann/vim-sandwich')
    call minpac#add('liuchengxu/vim-clap', { 'do': ':Clap install-binary!' })
    call minpac#add('voldikss/vim-floaterm')
    call minpac#add('liuchengxu/vim-which-key')
    call minpac#add('hardcoreplayers/spaceline.vim')
endfunction
call MinpacInit()

command! PackUpdate source $MYVIMRC | call MinpacInit() | call minpac#update()
command! PackClean  source $MYVIMRC | call MinpacInit() | call minpac#clean()
