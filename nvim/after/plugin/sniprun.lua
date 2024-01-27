require('sniprun').setup({
  --# you can combo different display modes as desired and with the 'Ok' or 'Err' suffix
  --# to filter only sucessful runs (or errored-out runs respectively)
  display = {
    "ClassicErr",                    --# display results in the command-line  area
--    "VirtualTextOk",              --# display ok results as virtual text (multiline is shortened)

    -- "VirtualText",             --# display results as virtual text
    -- "TempFloatingWindow",      --# display results in a floating window
    -- "LongTempFloatingWindow",  --# same as above, but only long results. To use with VirtualText[Ok/Err]
    "Terminal",                --# display results in a vertical split
    -- "TerminalWithCode",        --# display results and code history in a vertical split
    -- "NvimNotifyOk"              --# display with the nvim-notify plugin
    -- "Api"                      --# return output to a programming interface
  },

    display_options = {
        terminal_scrollback = vim.o.scrollback, -- change terminal display scrollback lines
        terminal_line_number = false, -- whether show line number in terminal window
        terminal_signcolumn = false, -- whether show signcolumn in terminal window
        terminal_position = "vertical", --# or "horizontal", to open as horizontal split instead of vertical split
        terminal_width = 45,          --# change the terminal display option width (if vertical)
        terminal_height = 20,         --# change the terminal display option height (if horizontal)
    },
   --# You can use the same keys to customize whether a sniprun producing
  --# no output should display nothing or '(no output)'
  show_no_output = {
    "Classic",
    "TempFloatingWindow",      --# implies LongTempFloatingWindow, which has no effect on its own
  },

  live_mode_toggle='off'      --# live mode toggle, see Usage - Running for more info   

})
vim.keymap.set('v', 'f','<Plug>SnipRun')
vim.keymap.set('n', '<leader>vf', 'ggVG:SnipRun<CR>')

