return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    local kanagawa = require("kanagawa.colors").setup()

    local colors_theme = kanagawa.theme
    local colors_p = kanagawa.palette

    local colors = {
      fg = colors_theme.ui.fg,
      bg = colors_theme.ui.bg,
    }
    local my_lualine_theme = {
      normal = {
        a = { bg = colors_p.springGreen, fg = colors_theme.ui.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      insert = {
        a = { bg = colors_p.sakuraPink, fg = colors_theme.ui.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      visual = {
        a = { bg = colors_p.oniViolet, fg = colors_theme.ui.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      command = {
        a = { bg = colors_p.oldWhite, fg = colors_theme.ui.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      replace = {
        a = { bg = colors_p.autumnRed, fg = colors_theme.ui.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      inactive = {
        a = { bg = colors_p.winterGreen, fg = colors_theme.ui.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
    }

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = my_lualine_theme,
      },
      sections = {
        lualine_x = {

          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}
