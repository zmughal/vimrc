

" TODO: ensure that the configuration is already set

let g:EasyGrepMode=0
let g:EasyGrepRecursive=1
GrepRoot recursion

ResultListTag EasyGrepTest GrepAdd -I c
GrepAdd -I c
ResultListTag EasyGrepTest GrepAdd -I C
GrepAdd -I C

cclose
ResultListSanitize
exe "ResultListSave ".testname.".out"
quit!


