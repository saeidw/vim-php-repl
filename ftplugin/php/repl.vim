" PHP REPL
" FileType:     PHP
" Last Change:  May 28, 2013
" Author:       Saeid Al-Wazzan
" Maintainer:   Saeid Al-Wazzan
" License:      MIT License

if exists("b:did_ftplugin")
    finish
endif

let b:did_ftplugin = 1

if !exists("g:no_plugin_maps") && !exists("g:no_php_maps")
    map <silent> <buffer> <LocalLeader>p :call <SID>Repl()<CR>
endif

if !exists("*s:Repl")
function s:Repl()
    let currLine = line(".")
    let region = join(getline(0, currLine), "\n")
    let result = system("php", region)

    let output = []
    for l in split(result, "\n")
        call add(output, "\/\/ =>\t" . l)
    endfor

    call append(currLine, output)

endfunction
endif

if !exists(":PhpRepl")
    command -buffer PhpRepl :call s:Repl()
endif

