return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require('gitsigns').setup {
                current_line_blame = true,
                current_line_blame_opts = {
                  delay = 500,
                },
            }
        end
    },
    {
        "folke/which-key.nvim",
         config = function(plugin, opts)
           require "plugins.configs.which-key"(plugin, opts) -- include the default astronvim config that calls the setup call
           -- Add bindings which show up as group name
           local wk = require "which-key"
           wk.register({
             T = { name = "Testing",
              t = {"<Cmd>:TestNearest<CR>", "Test nearest"},
                f = {"<Cmd>:TestFile<CR>", "Test file"},
                s = {"<Cmd>:TestSuite<CR>", "Test suite"},
                l = {"<Cmd>:TestLast<CR>", "Test last"},
                v = {"<Cmd>:TestLast<CR>", "Test visit"},                            

            },
           })
         end,
    },
    {
      --   "jay-babu/mason-null-ls.nvim",
      -- config = function(plugin, opts)
      --   local mason_null_ls = require("mason-null-ls")
      --   local null_ls = require "null-ls"
      --
      --   mason_null_ls.setup(opts) -- run setup
      --   mason_null_ls.setup_handlers { -- setup custom handlers
      --     prettier = function()
      --       null_ls.register(null_ls.builtins.formatting.prettier.with {
      --         condition = function(utils)
      --           return utils.root_has_file "package.json"
      --             or utils.root_has_file ".prettierrc"
      --             or utils.root_has_file ".prettierrc.json"
      --             or utils.root_has_file ".prettierrc.js"
      --         end,
      --       })
      --     end,
      --   }
      -- end,
    }
}
