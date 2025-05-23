return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile", "BufEnter" },
  opts = {
    signs = {
      delete = { text = "󰍵" },
      changedelete = { text = "󱕖" },
    },
    on_attach = function(bufnr)
      local gitsigns = require('gitsigns')

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      -- Navigation
      map("n", "<leader>gn", function() gitsigns.nav_hunk("next") end, { desc = "Next Hunk" })
      map("n", "<leader>gp", function() gitsigns.nav_hunk("prev") end, { desc = "Previous Hunk" })

      -- Hunk Actions
      map("n", "<leader>ga", gitsigns.stage_hunk, { desc = "Stage Hunk" })
      map("n", "<leader>gr", gitsigns.reset_hunk, { desc = "Reset Hunk" })
      map("v", "<leader>ga", function()
        gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
      end, { desc = "Stage Hunk" })
      map("v", "<leader>gr", function()
        gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
      end, { desc = "Reset Hunk" })
      map("n", "<leader>gv", gitsigns.preview_hunk, { desc = "Preview Hunk" })
      map("n", "<leader>gA", gitsigns.stage_buffer, { desc = "Stage Buffer" })
      map("n", "<leader>gu", gitsigns.undo_stage_hunk, { desc = "Undo Stage Hunk" })
      map("n", "<leader>gR", function()
        vim.ui.select({ "Yes", "No" }, {
          prompt = "Reset all changes in buffer?",
          kind = "confirm",
        }, function(choice)
          if choice == "Yes" then
            local success, err = pcall(gitsigns.reset_buffer)
            if success then
              vim.notify("Buffer reset successfully", vim.log.levels.INFO)
            else
              vim.notify("Failed to reset buffer: " .. err, vim.log.levels.ERROR)
            end
          end
        end)
      end, { desc = "Reset Buffer" })

      -- Blame
      map("n", "<leader>gb", function() gitsigns.blame_line({ full = true }) end, { desc = "Blame Line" })
      map("n", "<leader>gB", function() gitsigns.blame() end, { desc = "Blame Buffer" })

      -- Diff
      map("n", "<leader>gd", gitsigns.diffthis, { desc = "Diff This" })
    end,
  }
}
