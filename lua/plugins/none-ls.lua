return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- FORMATTING
        null_ls.builtins.formatting.stylua,       -- lua fmt
        null_ls.builtins.formatting.clang_format, -- cpp fmt
        null_ls.builtins.formatting.asmfmt,       -- asm fmt
        null_ls.builtins.formatting.golines,      -- go  fmt
        -- DIAGNOSTICS / LINTING
        null_ls.builtins.diagnostics.trivy,       -- all lint  
        -- COMPLETION
        null_ls.builtins.completion.spell         -- no idea...
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
