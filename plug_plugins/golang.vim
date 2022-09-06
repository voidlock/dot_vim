" ensure vim-go is installed
if exists('g:plug_installing_plugins')
  " dependencies
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  " experimental
  Plug 'ray-x/go.nvim', {'do': ':GoUpdateBinaries'}
  Plug 'ray-x/guihua.lua'
  Plug 'mfussenegger/nvim-dap'
  Plug 'rcarriga/nvim-dap-ui'
  Plug 'theHamsta/nvim-dap-virtual-text'
  finish
endif

autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()

lua <<EOF
require 'lspconfig'
require('go').setup({
  max_line_len = 120, -- max line length in goline format
  tag_transform = false, -- tag_transfer  check gomodifytags for details
  lsp_cfg = true, -- true: apply go.nvim non-default gopls setup
  lsp_gofumpt = false, -- true: set default gofmt in gopls format to gofumpt
  lsp_on_attach = true, -- if a on_attach function provided:  attach on_attach function to gopls
                       -- true: will use go.nvim on_attach if true
                       -- nil/false do nothing

  lsp_codelens = true,
  gopls_remote_auto = true, -- set to false is you do not want to pass -remote=auto to gopls(enable share)
  lsp_diag_hdlr = true, -- hook lsp diag handler
  dap_debug = true, -- set to true to enable dap
  dap_debug_keymap = true, -- set keymaps for debugger
  dap_debug_gui = true, -- set to true to enable dap gui, highly recommand
  dap_debug_vt = true, -- set to true to enable dap virtual text

  test_runner = 'richgo', -- richgo, go test, richgo, dlv, ginkgo
  run_in_floaterm = true -- set to true to run in float window.
})
EOF
