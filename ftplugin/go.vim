if exists("d:did_ftplugin")
	finish
endif
let b:did_ftplugin = 1

"
let s:cpo_save = &cpo
set cpo&vim

setlocal formatoptions-=t
setlocal comments=s1:/*,mb:*,ex:*/,://
setlocal commentstring=//\ %s

setlocal noexpandtab

compiler go

augroup vim-go-buffer
  autocmd! * <buffer>

endif



" restore vi compatibility settings
let &cpo = s:cpo_save
unlet s:cpo_save
" vim: sw=2 ts=2 et

