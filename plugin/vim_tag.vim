if exists("g:loaded_vim_tag")
    finish
endif
let g:loaded_vim_tag = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 Message call vim_tag#message(getline("."))
command! -nargs=0 Argument call vim_tag#argument(getline("."))
command! -nargs=0 Example call vim_tag#example(getline("."))
command! -nargs=0 Conjecture call vim_tag#conjecture(getline("."))
command! -nargs=0 Fact call vim_tag#fact(getline("."))
command! -nargs=0 Quote call vim_tag#quote(getline("."))
command! -nargs=0 Cause call vim_tag#cause(getline("."))
command! -nargs=0 Done call vim_tag#done(getline("."))
command! -nargs=0 Reset call vim_tag#reset(getline("."))

let &cpo = s:save_cpo
unlet s:save_cpo
