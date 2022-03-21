:nmap <c-t> :!clear; echo "ruby %:p"; ruby %:p<CR>


let g:ale_linters = {'ruby': ['standardrb'], 'javascript': ['standard'], 'json': ['jsonlint']}
let g:ale_fixers = {'ruby': ['standardrb'], 'javascript': ['standard'], 'json': ['jq']}
let g:ale_fix_on_save = 1
