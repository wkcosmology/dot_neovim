require'lspconfig'.clangd.setup{
    cmd = { "clangd", "--completion-style=detailed", "--index=true" }
}

require'lspconfig'.pyright.setup{}
-- require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}


vim.o.completeopt = "menuone,noselect"
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  auto_preselect = true;
  allow_prefix_unmatch = true;
  debug = false;
  min_length = 2;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  -- max_abbr_width = 200;
  -- max_kind_width = 100;
  -- max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    nvim_lsp = {priority= 90};
    nvim_lua = true;
    tags = {priority = 90};
    ultisnips = true;
  };
}

-- disable the lsp diagnostic
vim.lsp.callbacks["textDocument/publishDiagnostics"] = function() end
