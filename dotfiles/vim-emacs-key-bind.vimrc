" 模拟 Emacs 键绑定

" Move
inoremap <C-a> <Home>
inoremap <C-e> <End>

"inoremap <C-p> <Up>
"inoremap <C-n> <Down>

inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <M-b> <C-o>b
inoremap <M-f> <C-o>w

" Rubout word / line and enter insert mode
" use <Esc><Right> instead of <C-o>
inoremap <C-w> <Esc>dbcl

" delete
inoremap <C-u> <Esc>d0cl
inoremap <C-k> <Esc><Right>C
inoremap <C-d> <Esc><Right>s
inoremap <M-d> <C-o>de