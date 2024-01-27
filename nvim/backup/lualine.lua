require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'nightfly',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {'packer','neo-tree'},
      winbar = {},
      tabline = {'packer','neo-tree'}
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'searchcount','filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
    lualine_a ={{
                'tabs',
                max_length = vim.o.columns / 3, -- Maximum width of tabs component.
                                                -- Note:
                                                -- It can also be a function that returns
                                                -- the value of `max_length` dynamically.
                mode = 0, -- 0: Shows tab_nr
                            -- 1: Shows tab_name
                            -- 2: Shows tab_nr + tab_name

                -- Automatically updates active tab color to match color of other components (will be overidden if buffers_color is set)
                use_mode_colors = true,



                fmt = function(name, context)
                    -- Show + if buffer is modified in tab
                    local buflist = vim.fn.tabpagebuflist(context.tabnr)
                    local winnr = vim.fn.tabpagewinnr(context.tabnr)
                    local bufnr = buflist[winnr]
                    local mod = vim.fn.getbufvar(bufnr, '&mod')

                    return name .. (mod == 1 and ' +' or '')
                end
                }
            },
    lualine_b = {{'buffers', show_file_name_only=true, show_modified_status=true, mode=0}},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'branch'}
  },
  winbar = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'searchcount'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  inactive_winbar = {},
  extensions = {}
}
