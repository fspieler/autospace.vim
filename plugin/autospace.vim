function! AdjustIndentationSpaces(num_spaces)
    let &l:tabstop=a:num_spaces
    let &l:softtabstop=a:num_spaces
    let &l:shiftwidth=a:num_spaces
endfunction

function! AdjustLeadingSpaces()
    let l:numspaces=system("egrep -o \"^\\s+\" " . @% . "| awk '{print length ($0); }' | sort -nu | head -n 1")
    if l:numspaces != 0
        call AdjustIndentationSpaces(l:numspaces)
    endif
endfunction
