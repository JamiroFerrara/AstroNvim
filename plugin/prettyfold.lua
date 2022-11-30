require('pretty-fold').setup({
   sections = {
      left = {
         'content','number_of_folded_lines', ': ', 'percentage', ' '
      },
      right = {
         " ",
         function(config) return config.fill_char:rep(3) end
      }
   },
   fill_char = ' ',

   remove_fold_markers = true,

   keep_indentation = true,

   -- Possible values:
   -- "delete" : Delete all comment signs from the fold string.
   -- "spaces" : Replace all comment signs with equal number of spaces.
   -- false    : Do nothing with comment signs.
   process_comment_signs = 'spaces',

   add_close_pattern = true, -- true, 'last_line' or false

   ft_ignore = { 'neorg' },
})
