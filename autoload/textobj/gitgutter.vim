function! textobj#gitgutter#select_i()
  call GitGutter(expand('%:p'))
  if !s:line_has_sign()
      return 0
  endif
  let hunks = GitGutterGetHunks()
  let curr_line = line('.')
  for h in hunks
    let start_pos = h[2]
    let end_pos = start_pos + h[3]
    if (curr_line >= start_pos && curr_line <= end_pos)
        execute 'normal! ' . (end_pos-1) . 'G$'
        let selection_end = getpos('.')
        return ['v', [0, start_pos, 1, 0], selection_end ]
    endif
  endfor
  return 0
endfunction

function! s:line_has_sign()
    redir => signs
    silent exe ":sign place file=" . expand("%:f")
    redir END
    return (signs =~ line('.') . ' .*=GitGutter.*')
endfunction
