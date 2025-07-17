return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- ASCII header
        dashboard.section.header.val = {
            [[    _   __      _         ]],
            [[   / | / /   __(_)___ ___ ]],
            [[  /  |/ / | / / / __ `__ \]],
            [[ / /|  /| |/ / / / / / / /]],
            [[/_/ |_/ |___/_/_/ /_/ /_/ ]],
            [[                          ]],
            [[      Welcome to NVIM     ]],
        }

        -- Buttons
        dashboard.section.buttons.val = {
            dashboard.button("e", "📄  New File", ":enew<CR>"),
            dashboard.button("f", "🔍  Find File", ":Telescope find_files<CR>"),
            dashboard.button("q", "🚪  Quit", ":qa<CR>"),
        }

        -- Function to generate the footer with current time
        local function gen_footer()
            local datetime = os.date("  %A, %d %B %Y    %H:%M")
            return datetime .. "  ·  Fayaz's config · v0.11"
        end

        dashboard.section.footer.val = gen_footer()

        alpha.setup(dashboard.opts)

        -- Refresh the footer every minute
        vim.fn.timer_start(60000, function()
            dashboard.section.footer.val = gen_footer()
            pcall(vim.cmd.AlphaRedraw)
        end, { ["repeat"] = -1 }) -- repeat infinitely
    end
}
