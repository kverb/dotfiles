-- This is where your custom modules and plugins go.
-- See the wiki for a guide on how to extend NvChad

local hooks = require "core.hooks"

-- NOTE: To use this, make a copy with `cp example_init.lua init.lua`

--------------------------------------------------------------------

-- To modify packaged plugin configs, use the overrides functionality
-- if the override does not exist in the plugin config, make or request a PR,
-- or you can override the whole plugin config with 'chadrc' -> M.plugins.default_plugin_config_replace{}
-- this will run your config instead of the NvChad config for the given plugin

-- hooks.override("lsp", "publish_diagnostics", function(current)
--   current.virtual_text = false;
--   return current;
-- end)

-- To add new mappings, use the "setup_mappings" hook,
-- you can set one or many mappings
-- example below:

hooks.add("setup_mappings", function(map)
    -- easy save and close
    map('n',  '<leader>wq', ':waq!<CR>', {noremap = true})
    map('n',  '<leader>qq', ':q!<CR>', {noremap = true})
    map('n',  '<leader>qa', ':qa!<CR>', {noremap = true})
    -- attempt to make single character cuts not pollute system clipboard
    map('n', 'x', '"_x', {noremap = true})
    map('n', 'D', '"_D', {noremap = true})
    map('n', 's', '"_s', {noremap = true})
    map('n', 'S', '"_S', {noremap = true})
    map('n', 'c', '"_c', {noremap = true})
    map('n', 'C', '"_C', {noremap = true})
    -- 
end)

-- To add new plugins, use the "install_plugin" hook,
-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event' field)
-- see: https://github.com/wbthomason/packer.nvim
-- examples below:

hooks.add("install_plugins", function(use)
   use {
      "sudormrfbin/cheatsheet.nvim",
   }
   requires = {
    {'nvim-telescope/telescope.nvim'},
    {'nvim-lua/popup.nvim'},
    {'nvim-lua/plenary.nvim'},
  }
end)

-- alternatively, put this in a sub-folder like "lua/custom/plugins/mkdir"
-- then source it with

-- require "custom.plugins.mkdir"
