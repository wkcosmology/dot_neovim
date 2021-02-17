local M = {}
M.__index = M
local popfix = require'popfix'
local api = vim.api
local floating_win = require'popfix.floating_win'
local mapping = require'popfix.mappings'

function M.grepFloatingWindow()
    local function search_handler(popup)
        popup:close(function(_, selectedLine)
            vim.cmd(string.format('PRg %s', selectedLine))
            vim.cmd('stopinsert')
            vim.api.nvim_input('a')
        end)
    end

    local function close_cancelled(popup)
        popup:close(function(_, _)
            vim.cmd('stopinsert')
        end)
    end

    local opts = {
        height = 10,
        width = 120,
        mode = 'editor',
        close_on_bufleave = true,
        prompt = {
            border = true,
            title = 'Search',
            highlight = 'Normal',
            prompt_highlight = 'Normal',
        },
        callbacks = {
        },
        keymaps = {
            i = {
                ['<C-c>'] = close_cancelled,
                ['<CR>'] = search_handler,
            }
        },
        data = {
        }
    }
    local win = require'popfix':new(opts)
    return win
end

return M
