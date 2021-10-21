local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<Space>', '<NOP>', opts)

vim.g.mapleader = ' '

map('n', '<Leader>h', ':set hlsearch!<CR>', opts)

map('n', '<Leader>e', ':NvimTreeToggle<CR>', opts)

--Better resizing
map('n', '<M-j>', ':resize -2<CR>', opts)
map('n', '<M-k>', ':resize +2<CR>', opts)
map('n', '<M-h>', ':vertical resize -2<CR>', opts)
map('n', '<M-l>', ':vertical resize +2<CR>', opts)

--Better esc
map('i', 'jk', '<esc>', opts)
map('i', 'kj', '<esc>', opts)

--Better split navigation
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- Move to previous/next
map('n', '<A-y>', ':BufferPrevious<CR>', opts)
map('n', '<A-x>', ':BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)

-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)

-- Close buffer
map('n', '<A-c>', ':BufferClose<CR>', opts)

-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
map('n', '<C-p>', ':BufferPick<CR>', opts)

-- Sort automatically by...
map('n', '<Leader>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Leader>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Leader>bl', ':BufferOrderByLanguage<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

-- LSPSAGA
-- Lsp Finder
map('n', 'gh', ':Lspsaga lsp_finder<CR>', opts)

-- Code Action
map('n', '<Leader>ca', ':Lspsaga code_action<CR>', opts)
map('v', '<Leader>ca', ':<C-U>Lspsaga range_code_action<CR>', opts)

-- Hover Doc
map('n', 'K', ':Lspsaga hover_doc<CR>', opts)

-- Signature Help
map('n', 'gs', ':Lspsaga signature_help<CR>', opts)

-- Rename
map('n', 'gr', ':Lspsaga rename<CR>', opts)

-- Preview Definition
map('n', 'gd', ':Lspsaga preview_definition<CR>', opts)

-- Preview Definition
map('n', 'gl', ':Lspsaga show_line_diagnostic<CR>', opts)


