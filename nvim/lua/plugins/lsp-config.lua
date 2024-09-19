return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {

    "williamboman/mason-lspconfig.nvim",
    lazy = true,
    config = function()
      require("mason").setup()
      opts = {
        ensure_installed = {
          "html",
          "cssls",
          "ts_ls",
          "tailwindcss",
          "pyright",
          "gopls",
          "sqls",
          "lua_ls",
          "rust_analyzer",
          "phpactor",
        },
        automatic_install = true,
      }
    end,
    {

      "neovim/nvim-lspconfig",
      lazy = false,
      event = { "BufReadPre", "BufNewFile" },
      dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true },
      },
      config = function()
        -- Enable AutoCompletion
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        -- Load LSP Config
        local lspconfig = require("lspconfig")

        -- LSP Server Configurations

        -- LSP for GoLang
        lspconfig.gopls.setup({
          capabilities = capabilities,
        })

        -- LSP for Python
        lspconfig.pyright.setup({
          capabilities = capabilities,
        })

        -- LSP for C++
        lspconfig.clangd.setup({
          capabilities = capabilities,
        })

        -- LSP for C#
        lspconfig.csharp_ls.setup({
          capabilities = capabilities,
        })

        -- LSP for PHP
        lspconfig.phpactor.setup({
          capabilities = capabilities,
        })

        -- LSP for Rust
        lspconfig.rust_analyzer.setup({
          capabilities = capabilities,
        })

        -- LSP for CSS
        lspconfig.cssls.setup({
          capabilities = capabilities,
        })

        -- LSP for Tailwind CSS
        lspconfig.tailwindcss.setup({
          capabilities = capabilities,
        })

        -- LSP for SQL
        lspconfig.sqls.setup({
          capabilities = capabilities,
        })

        -- LSP for JavaScript & TypeScript
        lspconfig.ts_ls.setup({
          capabilities = capabilities,
        })

        -- LSP for JSON
        lspconfig.jsonls.setup({
          capabilities = capabilities,
        })
        -- LSP for YAML
        lspconfig.yamlls.setup({
          capabilities = capabilities,
        })

        -- LSP for HTML
        lspconfig.html.setup({
          capabilities = capabilities,
        })

        --LSP for Lua
        lspconfig.lua_ls.setup({
          capabilities = capabilities,
        })

        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
        vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})

        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.code_action, {})
        vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
      end,
    },
  },
}
