return {


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

    -- Harpoon
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

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

 --   L = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
--    H = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" }
  end,

}

