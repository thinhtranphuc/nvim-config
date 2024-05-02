return {
    "danymat/neogen",
    version = "*",
    -- Uncomment next line if you want to follow only stable versions
    config = function()
        local neogen = require("neogen")
        local opts = { noremap = true, silent = true }
        neogen.setup({
            enabled = true,
            languages = {
                python = {
                    template = {
                        annotation_convention = "reST" -- for a full list of annotation_conventions, see supported-languages below,
                    }
                },
            }
        })
        vim.api.nvim_set_keymap("n", "<leader>nf", ":lua require('neogen').generate({type = 'func'})<CR>", opts)
        vim.api.nvim_set_keymap("n", "<leader>nc", ":lua require('neogen').generate({type = 'class'})<CR>", opts)
    end
}
