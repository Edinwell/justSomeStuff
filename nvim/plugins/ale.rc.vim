let g:ale_sign_error = 'E>'
let g:ale_sign_warning = 'W>'
let g:ale_echo_msg_format = '[%linter%] %s'
let g:ale_sign_column_always = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

call ale#linter#Define('markdown', {
\   'name': 'textlint',
\   'executable': 'textlint',
\   'command': 'textlint -f unix %t',
\   'callback': 'ale#handlers#unix#HandleAsError',
\})