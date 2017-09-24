if exists("g:loaded_vim_task")
    finish
endif
let g:loaded_vim_task = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 Done call vim_task#done(getline("."))
command! -nargs=0 Reset call vim_task#reset(getline("."))
command! -nargs=0 ToDo call vim_task#todo(getline("."))

let &cpo = s:save_cpo
unlet s:save_cpo
