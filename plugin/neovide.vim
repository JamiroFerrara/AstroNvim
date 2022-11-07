if !exists('g:neovide')
    set guifont=FiraCode\ NF:h13
    highlight Normal guibg=none
    highlight NonText guibg=none
    highlight TabLine guibg = none
    highlight TabLineFill guibg = none
    highlight StatusLine guibg = none
    highlight StatusLineNC guibg = none
    highlight CursorColumn guibg = none
    highlight CursorLine guibg = none
    highlight NormalNC guibg = none
    highlight VertSplit guibg = none
    highlight TelescopeNormal guibg = none
    highlight TelescopePromptNormal guibg = none
    highlight TelescopePreviewNormal guibg = none
    highlight clear LineNr
    highlight clear SignColumn
endif
"-------------------------------------------------------------------------------------------------------------------
" NEOVIDE SETTINGS
"-------------------------------------------------------------------------------------------------------------------
let g:neovide_refresh_rate = 144
let g:neovide_transparency=0.1
let g:neovide_no_idle=v:true
let g:neovide_cursor_animation_length=0.07
let g:neovide_cursor_trail_length=0.10
let g:neovide_cursor_vfx_mode = "wireframe"
let g:neovide_cursor_vfx_opacity=80.0
let g:neovide_remember_window_size = v:true
