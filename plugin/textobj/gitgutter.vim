if exists('g:loaded_textobj_gitgutter')
    finish
endif

call textobj#user#plugin('gitgutter', {
      \ '-': {
      \     'select-i': 'ih', '*select-i-function*': 'textobj#gitgutter#select_i',
      \ },
    \})

let g:loaded_textobj_gitgutter = 1
