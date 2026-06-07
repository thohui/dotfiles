return {
  "folke/flash.nvim",
  keys = {
    { "s", false },
    {
      "<leader>j",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash Jump",
    },
  },
}
