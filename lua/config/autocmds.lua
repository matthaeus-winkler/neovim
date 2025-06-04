-- Briefly highlight text on yank, for visual feedback.
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Manual <Esc> mapping: clears search if active, else acts as a normal <Esc>
vim.keymap.set("n", "<Esc>", function()
  if vim.v.hlsearch == 1 then
    vim.cmd.nohlsearch()
  else
    local esc = vim.api.nvim_replace_termcodes("<Esc>", true, false, true)
    vim.api.nvim_feedkeys(esc, "n", true)
  end
end, { desc = "Clear search highlight if active, else normal <Esc>" })

-- TODO: Workaround until Telescope supports winborder
-- https://github.com/nvim-telescope/telescope.nvim/issues/3436
vim.api.nvim_create_autocmd("User", {
  group = vim.api.nvim_create_augroup("TelescopeBorderFix", { clear = true }),
  pattern = "TelescopeFindPre",
  callback = function()
    vim.opt_local.winborder = "none"
    vim.api.nvim_create_autocmd("WinLeave", {
      once = true,
      callback = function()
        vim.opt_local.winborder = "rounded"
      end,
    })
  end,
})

-- Show Dashboard when all buffers are closed
vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("DashboardOnEmpty", { clear = true }),
  callback = function()
    local bufname = vim.api.nvim_buf_get_name(0)
    local buftype = vim.bo.buftype
    local filetype = vim.bo.filetype

    -- If we land in an empty unnamed buffer, and it's not already the dashboard
    if bufname == "" and buftype == "" and filetype ~= "dashboard" then
      vim.schedule(function()
        vim.cmd("Dashboard")
      end)
    end
  end,
})
