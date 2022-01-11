" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " Syntax Highlighting 
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'JoosepAlviste/nvim-ts-context-commentstring'
    Plug 'MaxMEllon/vim-jsx-pretty' " fix indentation in jsx until treesitter can
    Plug 'jxnblk/vim-mdx-js'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    
    "Colorizer
    Plug 'norcalli/nvim-colorizer.lua'

    "LazyGit 
    Plug 'kdheepak/lazygit.nvim'

    "Nvim-Tree 
    Plug 'kyazdani42/nvim-web-devicons' " for file icons
    Plug 'kyazdani42/nvim-tree.lua'

    "Gitsigns
    Plug 'nvim-lua/plenary.nvim'
    Plug 'lewis6991/gitsigns.nvim'

    "Theme
    Plug 'dracula/vim', { 'as': 'dracula' }

    "Start Screen
    Plug 'glepnir/dashboard-nvim'

    "Statusline
    Plug 'hoob3rt/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'

    "BufferLine
    Plug 'akinsho/nvim-bufferline.lua'
    
    "Autocompletion
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-nvim-lua'
    
    "Snippets
    Plug  'L3MON4D3/LuaSnip'
    Plug 'rafamadriz/friendly-snippets'
    
    "Lsp
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'

    "ranger
    Plug 'francoiscabrol/ranger.vim'
    Plug 'rbgrouleff/bclose.vim'
    call plug#end()
