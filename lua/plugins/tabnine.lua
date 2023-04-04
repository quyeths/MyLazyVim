return {
  {
    "codota/tabnine-nvim",
    build = "./dl_binaries.sh",
    config = function()
      require("tabnine").setup({
        disable_auto_comment = true,
        accept_keymap = "<Tab>",
        dismiss_keymap = "<C-]>",
        debounce_ms = 800,
        suggestion_color = { gui = "#808080", cterm = 244 },
        exclude_filetypes = { "TelescopePrompt" },
      })
      require("lualine").setup({
        tabline = {
          lualine_a = {},
          lualine_b = { "branch" },
          lualine_c = { "filename" },
          lualine_x = {},
          lualine_y = {},
          lualine_z = {},
        },
        sections = { lualine_c = { "lsp_progress" }, lualine_x = { "tabnine" } },
      })
    end,
  },
}
