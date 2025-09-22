return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "Hoffs/omnisharp-extended-lsp.nvim",
    },
    opts = {
      servers = {
        omnisharp = {
          cmd = { vim.fn.stdpath("data") .. "/mason/bin/omnisharp/OmniSharp" }, -- mason path
          enable_import_completion = true,
          enable_roslyn_analyzers = true,
          organize_imports_on_format = true,
          handlers = {
            ["textDocument/definition"] = function(...)
              return require("omnisharp_extended").handler(...)
            end,
          },
        },
      },
    },
  },
}
