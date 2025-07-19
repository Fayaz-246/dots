vim.g.mapleader = " "

vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv") -- Alt Up/Down in vscode
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

-- paste and don't replace clipboard over deleted text
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")

-- Normal mode: toggle comment for the current line
vim.keymap.set('n', '<leader>/', function()
  require('Comment.api').toggle.linewise.current()
end, { desc = 'Toggle comment line' })

-- Visual mode: toggle comment for the selected lines
vim.keymap.set('v', '<leader>/', function()
  local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)
  vim.api.nvim_feedkeys(esc, 'nx', false)
  require('Comment.api').toggle.linewise(vim.fn.visualmode())
end, { desc = 'Toggle comment selection' })

-- yank into clipboard even if on ssh
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- copy the whole file into sys keyboard
vim.keymap.set("n", "<leader>cc", function()
  local filepath = vim.fn.expand("%:p") -- absolute path to current file
  vim.fn.jobstart({ "fish", "-c", "copy cat " .. vim.fn.shellescape(filepath) }, {
    stdout_buffered = true,
    stderr_buffered = true,
    on_stdout = function(_, data)
      if data then
        vim.notify(table.concat(data, "\n"), vim.log.levels.INFO)
      end
    end,
    on_stderr = function(_, data)
      if data and data[1] ~= "" then
        vim.notify(table.concat(data, "\n"), vim.log.levels.ERROR)
      end
    end,
  })
end, { desc = "Run `copy cat <currentfile>`" })

-- Buffer line
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { silent = true })
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { silent = true })
vim.keymap.set('n', '<leader>bd', function()
  if #vim.fn.getbufinfo({ buflisted = 1 }) > 1 then
    vim.cmd('bd')
  else
    vim.cmd("Ex")
  end
end, { desc = 'Close buffer' })

-- Format
vim.keymap.set("n", "<leader>fm", function()
  vim.cmd("write")
  vim.lsp.buf.format({ async = true })
end, { desc = "Format current file" })

-- Replace all instances of whatever is under cursor (on line)
vim.keymap.set("n", "<leader>sr", [[:s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])
-- Replace all instances of the word under cursor in the whole file
vim.keymap.set("n", "<leader>Sr", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])

-- Disabling Arrow Keys & Mouse <Just gud practise>
local keys = { "<Up>", "<Down>", "<Right>", "<Left>" }
for _, key in ipairs(keys) do
  vim.keymap.set({ "n", "v" }, key, "<Nop>")
end
vim.opt.mouse = ""
