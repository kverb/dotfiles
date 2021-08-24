local init_modules = {
   "core",
}

for _, module in ipairs(init_modules) do
   local ok, err = pcall(require, module)
   if not ok then
      error("Error loading " .. module .. "\n\n" .. err)
   end
end

-- put custom remaps here i guess
local map = vim.api.nvim_set_keymap
-- make navigating splits a little easier
map('n',  '<C-J>', '<C-W><C-J>', {noremap = true})
map('n',  '<C-K>', '<C-W><C-K>', {noremap = true})
map('n',  '<C-L>', '<C-W><C-L>', {noremap = true})
map('n',  '<C-H>', '<C-W><C-h>', {noremap = true})

-- easy save and close
map('n',  '<leader>w', ':w!<CR>', {noremap = true})
map('n',  '<leader>q', ':q!<CR>', {noremap = true})

