return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require('bufferline').setup({
            options = {
                mode = "buffers",
                separator_style = "padded_slant", -- or "thin", "padded_slant", etc.
                diagnostics = "nvim_lsp",
                show_buffer_close_icons = false,
                show_close_icon = false,
                offsets = {
                    { filetype = "NvimTree", text = "File Explorer", text_align = "left" }
                },
                always_show_bufferline = true,
            },
        })
        vim.opt.termguicolors = true
        vim.opt.showtabline = 2
    end
}
