
require "paq" {
    'savq/paq-nvim';                    -- Let Paq manage itself

    'neovim/nvim-lspconfig';            -- Mind the semi-colons
    'williamboman/nvim-lsp-installer';  -- manage LSP servers
    'hrsh7th/nvim-cmp';

    {'lervag/vimtex', opt=true};        -- Use braces when passing options

    'kyazdani42/nvim-web-devicons';     -- filesystem icons
    'kyazdani42/nvim-tree.lua';         -- filesystem navigation
    'DanilaMihailov/beacon.nvim';       -- cursor jump
    'nvim-lualine/lualine.nvim';        -- statusline
    'phha/zenburn.nvim';                -- colorscheme
    'nvim-lua/plenary.nvim';
    'nvim-telescope/telescope.nvim';    -- fuzzy finder over lists
    {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' };  -- Telescope fzf native
    'nvim-telescope/telescope-media-files.nvim'; -- See images with Telescope
    'stevearc/dressing.nvim';
    'nvim-telescope/telescope-ui-select.nvim';
    'majutsushi/tagbar';                -- code structure    
    'Yggdroot/indentLine';              -- see indentation
    'tpope/vim-fugitive';               -- Git
    'sar/neogit.nvim';                  -- integration
    'sindrets/diffview.nvim';           -- View the diffs
    'tanvirtin/vgit.nvim';
    'rhysd/git-messenger.vim';
    'junegunn/gv.vim';                  -- commit history
    'windwp/nvim-autopairs';            -- auto close brackets, etc.
    'lewis6991/impatient.nvim';         -- speedup loading modules
    'nvim-treesitter/nvim-treesitter';
    'nvim-treesitter/nvim-treesitter-textobjects';
    'mfussenegger/nvim-ts-hint-textobject';
    'RRethy/nvim-treesitter-textsubjects';
    'qInstakdheepak/tabline.nvim';
    'romgrk/barbar.nvim';               -- Tabline
    'ms-jpq/coq_nvim';                  -- Completione engine
    'ms-jpq/coq.artifacts';
    'ms-jpq/coq.thirdparty';
    'dcampos/nvim-snippy';              -- Snippets
    'honza/vim-snippets';               -- ditto
    'folke/lsp-colors.nvim';
    'p00f/nvim-ts-rainbow';
    'nvim-lua/popup.nvim';
    'nvim-telescope/telescope-media-files.nvim'; -- See images with Telescope
    'lewis6991/gitsigns.nvim';          -- git related info in signs columns and popups
    'mhinz/vim-startify';               -- Fancy startup screen
}

