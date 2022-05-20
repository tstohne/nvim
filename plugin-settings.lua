-- PLUGINS: Add this section
require('nvim-tree').setup{}
require("zenburn").setup()
require("lualine").setup {
    options = {
        icons_enabled = true,
        theme = "zenburn",
    }
}
require('telescope').setup{

-- Enable telescope fzf native
require('telescope').load_extension 'fzf'    
  -- ...
}
require('nvim-autopairs').setup{}
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "latex", "lua", "markdown", "python", "rust" },
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
    rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
}
require'tabline'.setup {
  -- Defaults configuration options
  enable = true,
  options = {
  -- If lualine is installed tabline will use separators configured in lualine by default.
  -- These options can be used to override those settings.
  section_separators = {'', ''},
  component_separators = {'', ''},
  max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
  show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
  show_devicons = true, -- this shows devicons in buffer section
  show_bufnr = false, -- this appends [bufnr] to buffer section,
  show_filename_only = false, -- shows base filename only instead of relative path in filename
  modified_icon = "+ ", -- change the default modified icon
  modified_italic = false, -- set to true by default; this determines whether the filename turns italic if modified
  show_tabs_only = false, -- this shows only tabs instead of tabs + buffers
  }
}

require('snippy').setup({
    mappings = {
        is = {
            ['<Tab>'] = 'expand_or_advance',
            ['<S-Tab>'] = 'previous',
        },
        nx = {
            ['<leader>x'] = 'cut_text',
        },
    },
})

require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

require'lspconfig'.pyright.setup{}

local lsp = require "lspconfig"
local coq = require "coq"

local servers = { 'cssmodules_ls', 'hls', 'html', 'pyright', 'rust_analyzer', 'tsserver' }
for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
    coq.lsp_ensure_capabilities{
    on_attach = on_attach,
    flags = {
      -- This will be the default in neovim 0.7+
      debounce_text_changes = 150,
    }}
  }
end

require'nvim-treesitter.configs'.setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
  },
}

-- Tree-sitter configuration
require'nvim-treesitter.configs'.setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
  },
}


require('telescope').load_extension('media_files')

-- Gitsigns
require('gitsigns').setup {
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
}

require('snippy').setup({
    mappings = {
        is = {
            ['<Tab>'] = 'expand_or_advance',
            ['<S-Tab>'] = 'previous',
        },
        nx = {
            ['<leader>x'] = 'cut_text',
        },
    },
})


