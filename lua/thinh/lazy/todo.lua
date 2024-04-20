return {
    "folke/todo-comments.nvim",
    dependencies = {"plenary"},
    config = function()
        local todo = require("todo-comments")
        todo.setup({
            vim.api.nvim_set_keymap("n", "<leader>pt", ":TodoTelescope<CR>", {noremap = true}),
            vim.keymap.set("n", "]t", function()
                todo.jump_next()
            end, { desc = "Next todo comment" }),

            vim.keymap.set("n", "[t", function()
                todo.jump_prev()
            end, { desc = "Previous todo comment" }),

            -- You can also specify a list of valid jump keywords

            vim.keymap.set("n", "]t", function()
                todo.jump_next({keywords = { "ERROR", "WARNING" }})
            end, { desc = "Next error/warning todo comment" })
        })
    end
}
