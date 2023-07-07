require("lsp-format").setup {}
require("lspconfig").gopls.setup { on_attach = require("lsp-format").on_attach }

require("lspconfig").tsserver.setup {
    on_attach = require("lsp-format").on_attach,
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
}

require("lspconfig").jsonls.setup {
    on_attach = require("lsp-format").on_attach,
    filetypes = { "json", "jsonc" },
}

require("lspconfig").html.setup {
    on_attach = require("lsp-format").on_attach,
    filetypes = { "html" },
}

--rust

require("lspconfig").rust_analyzer.setup {
    on_attach = require("lsp-format").on_attach,
    filetypes = { "rust" },
}

--lua

require("lspconfig").lua_ls.setup {
    on_attach = require("lsp-format").on_attach,
    filetypes = { "lua" },
}
