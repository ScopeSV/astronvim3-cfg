return {


    lsp = {
      formatting = {
        format_on_save = false,
      },
    },

  config = function()
  require("lewis6991/gitsigns.nvim").setup() {
    current_line_blame = true
  }
  end,
  polish = function()

    -- Transparent nvim
    vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
    vim.cmd("hi EndOfBuffer guibg=NONE ctermbg=NONE")
    vim.cmd("hi Normal guibg=NONE ctermbg=NONE")

    vim.keymap.set("n", "<C-d>", "<C-d>zz")
    vim.keymap.set("n", "<C-u>", "<C-u>zz")

    vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
    vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

    vim.cmd([[
      let g:go_highlight_types = 1
      let g:go_highlight_fields = 1
      let g:go_highlight_function_calls = 1
      let g:go_highlight_functions = 0
      let g:go_highlight_operators = 1
      let g:go_highlight_extra_types = 1
    ]])

    -- Harpoon
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    -- Go-vim syntax
    vim.keymap.set("n", "<leader>a", mark.add_file)
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
    vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
    vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end)

    -- Copilot
    vim.cmd([[imap <silent><script><expr> <C-c> copilot#Accept("\<CR>")]])
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true

    -- Set
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = true

    vim.cmd([[
      syntax enable
      filetype plugin indent on
    ]])


  end,

}

