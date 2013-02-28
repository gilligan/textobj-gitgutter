
function! textobj#gitgutter#select_i()
  let curr_line = line('.')
  call GitGutter()
  let hunks = GitGutterGetHunks()
  for h in hunks
    let start_pos = h[2]
    let end_pos = start_pos + h[3]
    if (curr_line >= start_pos && curr_line <= end_pos)
        execute 'normal! ' . (end_pos-1) . 'G$'
        let selection_end = getpos('.')
        return = ['v', [0, start_pos, 1, 0], selection_end ]
    endif
  endfor
  return 0
endfunction
