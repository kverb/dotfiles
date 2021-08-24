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
