return {
  {
    "folke/snacks.nvim",
    opts = {
      scroll = {
        animate = {
          duration = { step = 15, total = 250 },
          easing = "linear",
        },
        -- Faster animation when repeating scroll after a delay
        animate_repeat = {
          delay = 100, -- Delay in ms before using repeat animation
          duration = { step = 5, total = 50 },
          easing = "linear",
        },
        -- Define what buffers should have animated scrolling
        filter = function(buf)
          return vim.g.snacks_scroll ~= false
            and vim.b[buf].snacks_scroll ~= false
            and vim.bo[buf].buftype ~= "terminal"
        end,
      },
    },
  },
}
