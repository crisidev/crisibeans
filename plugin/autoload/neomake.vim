function! neomake#OnBattery() abort
    let l:cmd = 'm battery status | grep "AC Power"'
    let l:cmdout = system(l:cmd)
    if matchstr(l:cmdout,'AC Power') ==? 'AC Power'
        return 0
    else
        return 1
    endif
endfunction

if neomake#OnBattery()
    call neomake#configure#automake('w', 500)
else
    call neomake#configure#automake('nrw', 200)
endif
