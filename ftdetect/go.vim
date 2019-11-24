let s:cpo_save = &cpo
set cpo&vim

" body
au BufRead,BufNewFile *.go setfiletype go
au BufRead,BufNewFile *.tmlp setfiletype gohtmltmlp
au BufRead,BufNewFile go.mod call s:gomod()

function! s:gomod()
	for l:i in range(1, line('$'))
    let l:l = getline(l:i)
    if l:l ==# '' l:l[:1] ==# '//'
      continue
    endif

    if l:l =~# '^module .\+'
      setfiletype gomod
    endif

    break
  endfor
endfunction

" restore compatibility settings
let &cpo = s:cpo_save
unlet s:cpo_save

" vim: sw=2 ts=2 et
