local M = {}
local opts = { noremap = true, silent = true }

M.keymaps = {
  { 'n', 'x', '"_x' },

  -- Search word
  { 'n', '*', '*``<C-o>', opts},
  { 'n', '<C-S-i>', ':nohlsearch<CR>', opts },

  -- Save and exit form neovim
  { 'n', '<C-s>', ':write<CR>', opts },
  { 'n', '<C-q>', ':quitall!<CR>', opts },

  -- Increment/decrement
  { 'n', '+', '<C-a>', opts },
  { 'n', '-', '<C-x>', opts },

  -- Delete a word backwards
  { 'n', 'dw', 'vb"_d', opts },

  -- Select all
  { 'n', '<C-a>', 'gg<S-v>G', opts },

  -- Buffer management (Tabs)
  { 'n', '<C-t>', ':tabedit<CR>', opts },

  { 'n', '<Tab>', ':tabnext<CR>', opts },
  { 'n', '<S-Tab>', ':tabprevious<CR>', opts },

  { 'n', '<C-k>c', ':bp|bd #<CR>', opts },
  { 'n', '<C-k>w', ':tabonly<CR>', opts },

  { 'n', '<C-1>', ':tabfirst<CR>', opts },
  { 'n', '<C-2>', ':tabnext 2<CR>', opts },
  { 'n', '<C-3>', ':tabnext 3<CR>', opts },
  { 'n', '<C-4>', ':tabnext 4<CR>', opts },
  { 'n', '<C-5>', ':tabnext 5<CR>', opts },
  { 'n', '<C-6>', ':tabnext 6<CR>', opts },
  { 'n', '<C-7>', ':tabnext 7<CR>', opts },
  { 'n', '<C-8>', ':tabnext 8<CR>', opts },
  { 'n', '<C-9>', ':tabnext 9<CR>', opts },
  { 'n', '<C-0>', ':tablast<CR>', opts },

  -- Split window
  { 'n', '<C-\\>', ':vsplit<CR><C-w>w', opts },
  { 'n', '<C-`>', ':split<CR><C-w>w', opts },

  -- Move window
  { 'n', '<Leader>sh', '<C-w>h' },
  { 'n', '<Leader>sk', '<C-w>k' },
  { 'n', '<Leader>sj', '<C-w>j' },
  { 'n', '<Leader>sl', '<C-w>l' },

  -- Resize window
  { 'n', '<Leader>ml', '<C-w><' },
  { 'n', '<Leader>mh', '<C-w>>' },
  { 'n', '<Leader>mk', '<C-w>+' },
  { 'n', '<Leader>mj', '<C-w>-' },

  -- Undo and redo
  { 'n', '<C-z>', ':undo<CR>', opts },
  { 'n', 'C-y', ':redo<CR>', opts },

  -- Move complete lines
  { 'n', '<C-S-Up>', ':m .-2<CR>==', opts },
  { 'n', '<C-S-Down>', ':m .+1<CR>==', opts },
  { 'v', '<C-S-Up>', ':m \'<-2<CR>gv=gv', opts },
  { 'v', '<C-S-Down>', ':m \'>+1<CR>gv=gv', opts },

  -- Commentary
  { { 'n', 'v' }, '<C-/>', ':Commentary<CR>', opts },

  -- NvimTree
  { 'n', '<C-S-e>', ':NvimTreeToggle<CR>', opts },

  -- Zen mode
  { 'n', '<C-k>z', ':ZenMode<CR>', opts },

  -- Multiplecursors
  { { 'n', 'v' }, '<Leader>m', '<cmd>MCstart<CR>', opts },

  -- Markdown preview
  { 'n', '<C-k>v', '<Plug>MarkdownPreviewToggle', opts }
}

M.load = function ()
 for _, map in pairs(M.keymaps) do
    if map[4] ~= nil then
      vim.keymap.set(map[1], map[2], map[3], map[4])
      goto continue
    end

    vim.keymap.set(map[1], map[2], map[3])
    ::continue::
  end
end

return M
