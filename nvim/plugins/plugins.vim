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
    Plug 'liuchengxu/vim-clap'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    
    "Theme
    Plug 'dracula/vim', { 'as': 'dracula' }

    "Start Screen
    Plug 'glepnir/dashboard-nvim'

    "Statusline
    Plug 'hoob3rt/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'

    "BufferLine
    Plug 'akinsho/nvim-bufferline.lua'

    "Colorizer
    Plug 'norcalli/nvim-colorizer.lua'

    "LazyGit 
    Plug 'kdheepak/lazygit.nvim'

    "Gitsigns
    Plug 'nvim-lua/plenary.nvim'
    Plug 'lewis6991/gitsigns.nvim'

    " Syntax Highlighting 
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'JoosepAlviste/nvim-ts-context-commentstring'
    Plug 'MaxMEllon/vim-jsx-pretty' " fix indentation in jsx until treesitter can
    Plug 'jxnblk/vim-mdx-js'

    "cmp plugins
    Plug 'hrsh7th/nvim-cmp' " -- The completion plugin
    Plug 'hrsh7th/cmp-buffer' " -- buffer completions
    Plug 'hrsh7th/cmp-path' " -- path completions
    Plug 'hrsh7th/cmp-cmdline' " -- cmdline completions
    Plug 'saadparwaiz1/cmp_luasnip' " -- snippet completions

    "snippets
    Plug 'L3MON4D3/LuaSnip' "--snippet engine
    Plug 'rafamadriz/friendly-snippets' " -- a bunch of snippets to use

    "ranger
    Plug 'rbgrouleff/bclose.vim'
    Plug 'francoiscabrol/ranger.vim'
    call plug#end()
