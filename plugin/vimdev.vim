" Author: m.nesterovych@gmail.com
" Description: My development plugins for vim
"   Main languages are: go, javascript, python, vue
"

if exists('g:loaded_vim_dev')
	finish
endif
let g:loaded_vim_dev = 1

" save compatibility settings
let s:cpo_save = &cpo
set cpo&vim


" restore Vi compatibility settings
let &cpo = s:cpo_save
unlet s:cpo_save

" vim: sw=2 ts=2 et
