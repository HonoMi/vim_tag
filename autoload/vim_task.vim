let s:save_cpo = &cpo
set cpo&vim


function! vim_task#todo(line)
    if a:line =~ ' *[-\*] \[\(done\|!\)\].*'
        echo "false"
        call setline('.', substitute(a:line, '^\( *[-\*] \)\[\(done\|!\)\]\( *\)', '\1[!]\3', ''))
    elseif a:line =~ ' *[-\*] .*'
        echo "true"
        call setline('.', substitute(a:line, '^\( *[-\*] \)', '\1[!] ', ''))
    endif
endfunction

function! vim_task#done(line)
    if a:line =~ ' *[-\*] \[\(done\|!\)\].*'
        call setline('.', substitute(a:line, '^\( *[-\*] \)\[\(done\|!\)\]\( *\)', '\1[done]\3', ''))
    elseif a:line =~ ' *[-\*] .*'
        call setline('.', substitute(a:line, '^\( *[-\*] \)', '\1[done] ', ''))
    endif
endfunction

function! vim_task#reset(line)
    if ! a:line =~ ' *[-\*] \[\(done\|!\)\].*'
        return
    endif
    call setline('.', substitute(a:line, '\[[^\]]*\] ', '', ''))
endfunction



let &cpo = s:save_cpo
unlet s:save_cpo
