local M = {}

function M.template()
    local choice = vim.fn.confirm("Replace this buffer?", "&Yes\n&No", 2)

    if choice == 1 then
        local config_path = vim.fn.stdpath("config")
        local f = vim.fs.joinpath(config_path, "templates", "java.java")
        local lines = {}
        for line in io.lines(f)
            do
                lines[#lines + 1] = line
            end

        local total = vim.api.nvim_buf_line_count(0)
        vim.api.nvim_buf_set_lines(0, 0, total, true, lines)

        vim.notify("Buffer replaced")
    else
        vim.notify("Buffer not replaced")
    end
end

return M
